import os
import pytest
import yaml
import tempfile
import shutil
from unittest import mock
from typing import Dict

from token_calculator import (
    calculate_tokens,
    get_total_tokens,
    check_token_limits,
    load_config,
    get_encoding_for_model
)

TEST_CONTENTS = {
    "file1.txt": "This is a test file with some text.",
    "file2.txt": "Another test file with more text.",
    "file3.md": "# Header\nSome markdown content.",
}

@pytest.fixture(scope="module")
def config():
    config_data = {
        'directories': [],
        'models': {
            'openai-gpt-3.5-turbo': {
                'limits': {
                    '16K': 16000,
                    '32K': 32000,
                    '64K': 64000,
                }
            },
            'openai-gpt-4': {
                'limits': {
                    '16K': 16000,
                    '32K': 32000,
                    '64K': 64000,
                }
            },
        }
    }

    with tempfile.NamedTemporaryFile(mode='w+', delete=False, suffix='.yaml') as tmp:
        yaml.dump(config_data, tmp)
        tmp_path = tmp.name

    yield tmp_path

    os.remove(tmp_path)

@pytest.fixture(scope="module")
def test_directories():
    dirs = []
    for i in range(3):
        temp_dir = tempfile.mkdtemp(prefix=f"testdir_{i}_")
        dirs.append(temp_dir)
        for filename, content in TEST_CONTENTS.items():
            file_path = os.path.join(temp_dir, filename)
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
    yield dirs
    # Cleanup
    for dir in dirs:
        shutil.rmtree(dir)

def test_calculate_tokens():
    test_text = "Hello, world!"
    model = "openai-gpt-3.5-turbo"
    encoding = get_encoding_for_model(model)
    token_count = calculate_tokens(test_text, encoding)
    assert isinstance(token_count, int)
    # Since tokenization can vary, we'll check it's greater than 0
    assert token_count > 0

def test_get_total_tokens(test_directories):
    model = "openai-gpt-3.5-turbo"
    encoding = get_encoding_for_model(model)
    for directory in test_directories:
        total_tokens = get_total_tokens(directory, encoding)
        assert isinstance(total_tokens, int)
        assert total_tokens > 0
        # Calculate expected tokens manually for the test contents
        expected_tokens = sum([
            calculate_tokens(content, encoding) for content in TEST_CONTENTS.values()
        ])
        assert total_tokens == expected_tokens

@pytest.mark.parametrize("mock_token_count, expected_16k, expected_32k, expected_64k", [
    (15000, True, True, True),
    (17000, False, True, True),
    (33000, False, False, True),
    (65000, False, False, False),
])
def test_check_token_limits(mock_token_count, expected_16k, expected_32k, expected_64k, test_directories):
    model = "openai-gpt-3.5-turbo"
    model_limits = {
        '16K': 16000,
        '32K': 32000,
        '64K': 64000,
    }
    with mock.patch('token_calculator.get_total_tokens', return_value=mock_token_count):
        encoding = get_encoding_for_model(model)
        total_tokens = mock_token_count 
        results = check_token_limits(total_tokens, model_limits)
        assert results['16K'] == expected_16k
        assert results['32K'] == expected_32k
        assert results['64K'] == expected_64k

def pytest_runtest_makereport(item, call):
    if call.when == "call":
        if call.excinfo is None:
            # Test passed
            print("✅ ", end="")
        else:
            # Test failed
            print("❌ ", end="")
