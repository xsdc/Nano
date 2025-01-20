# /// script
# requires-python = ">=3.13"
# dependencies = [
#     "pytest",
#     "pytest-randomly",
#     "pyyaml",
#     "rich",
#     "tiktoken",
# ]
# ///

import os
import sys
import yaml
import tiktoken
from typing import Dict, List

def load_config(config_path: str) -> Dict:
    try:
        with open(config_path, 'r', encoding='utf-8') as f:
            config = yaml.safe_load(f)
        return config
    except FileNotFoundError:
        print(f"Configuration file '{config_path}' not found.")
        sys.exit(1)
    except yaml.YAMLError as exc:
        print(f"Error parsing YAML file: {exc}")
        sys.exit(1)

def get_encoding_for_model(model: str):
    model_encodings = {
        "openai-gpt-3.5-turbo": "cl100k_base",
        "openai-gpt-4": "cl100k_base",
    }

    encoding_name = model_encodings.get(model)
    if not encoding_name:
        print(f"Encoding for model '{model}' not found. Please update the model_encodings mapping.")
        sys.exit(1)

    try:
        encoding = tiktoken.get_encoding(encoding_name)
    except KeyError:
        print(f"Encoding '{encoding_name}' not found. Please check the model configuration.")
        sys.exit(1)
    return encoding

def calculate_tokens(text: str, encoding) -> int:
    tokens = encoding.encode(text)
    return len(tokens)

def get_total_tokens(directory: str, encoding) -> int:
    total_tokens = 0
    valid_extensions = ('.txt', '.md', '.py', '.java', '.js', '.json', '.html', '.css')

    for root, _, files in os.walk(directory):
        for file in files:
            if not file.lower().endswith(valid_extensions):
                continue
            file_path = os.path.join(root, file)
            try:
                with open(file_path, 'r', encoding='utf-8') as f:
                    content = f.read()
                    tokens = calculate_tokens(content, encoding)
                    total_tokens += tokens
            except Exception as e:
                print(f"Error reading file '{file_path}': {e}")

    return total_tokens

def check_token_limits(total_tokens: int, limits: Dict[str, int]) -> Dict[str, bool]:
    results = {}
    for limit_name, limit_value in limits.items():
        results[limit_name] = total_tokens <= limit_value
    return results

def main():
    if len(sys.argv) != 3:
        print("Usage: python token_calculator.py <config.yaml> <base_dir>")
        sys.exit(1)

    config_path = sys.argv[1]
    base_dir = sys.argv[2]
    config = load_config(config_path)

    directories = config.get('directories', [])
    models = config.get('models', {})

    if not directories:
        print("No directories specified in the configuration.")
        sys.exit(1)

    if not models:
        print("No models specified in the configuration.")
        sys.exit(1)

    for directory in directories:
        full_directory_path = os.path.join(base_dir, directory)
        if not os.path.isdir(full_directory_path):
            print(f"Directory '{full_directory_path}' does not exist. Skipping.")
            continue

        print(f"\nDirectory: {full_directory_path}")
        for model, model_info in models.items():
            encoding = get_encoding_for_model(model)
            total_tokens = get_total_tokens(full_directory_path, encoding)
            print(f"  Model: {model}")
            print(f"    Total Tokens: {total_tokens}")
            token_checks = check_token_limits(total_tokens, model_info['limits'])
            for limit_name, status in token_checks.items():
                symbol = "✅" if status else "❌"
                print(f"    {limit_name} ({model_info['limits'][limit_name]}): {symbol}")
        print()

if __name__ == "__main__":
    main()
