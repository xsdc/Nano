import DSACore

struct LeetCode0020 {
    struct Input {
        let s: String
    }

    struct Output: Equatable {
        let isValid: Bool
    }
}

protocol LeetCode0020Solution: FunctionExecuting where Input == LeetCode0020.Input, Output == LeetCode0020.Output {}

// Time complexity:
// Space complexity:

struct PreemptiveClosingStack_LeetCode0020Solution: LeetCode0020Solution {
    static func execute(input: LeetCode0020.Input) -> LeetCode0020.Output {
        func isValid(_ s: String) -> Bool {
            guard s.count % 2 == 0 else { return false }

            var stack = [String]()
            for bracket in s {
                switch bracket {
                case "(": stack.append(")")
                case "{": stack.append("}")
                case "[": stack.append("]")
                default:
                    if stack.isEmpty || stack.popLast() != String(bracket) {
                        return false
                    }
                }
            }

            return stack.isEmpty
        }

        return LeetCode0020.Output(
            isValid: isValid(input.s)
        )
    }
}

// Time complexity:
// Space complexity:

struct OpeningStack_LeetCode0020Solution: LeetCode0020Solution {
    static func execute(input: LeetCode0020.Input) -> LeetCode0020.Output {
        func isValid(_ s: String) -> Bool {
            var stack = [Character]()
            let brackets: [Character: Character] = [")": "(", "]": "[", "}": "{"]

            for character in s {
                if brackets.keys.contains(character) {
                    if let last = stack.last, last == brackets[character] {
                        stack.removeLast()
                    }
                    else {
                        return false
                    }
                }
                else {
                    stack.append(character)
                }
            }

            return stack.isEmpty
        }

        return LeetCode0020.Output(
            isValid: isValid(input.s)
        )
    }
}

// Time complexity:
// Space complexity:

struct BruteForce_LeetCode0020Solution: LeetCode0020Solution {
    static func execute(input: LeetCode0020.Input) -> LeetCode0020.Output {
        func isValid(_ s: String) -> Bool {
            var string = s

            while string.contains("()") || string.contains("[]") || string.contains("{}") {
                string = string.replacingOccurrences(of: "()", with: "")
                string = string.replacingOccurrences(of: "[]", with: "")
                string = string.replacingOccurrences(of: "{}", with: "")
            }

            return string.isEmpty
        }

        return LeetCode0020.Output(
            isValid: isValid(input.s)
        )
    }
}
