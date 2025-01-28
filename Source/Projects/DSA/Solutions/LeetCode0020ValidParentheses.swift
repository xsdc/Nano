import Foundation
import DSACore

protocol LeetCode0020ValidParentheses: FunctionExecuting where Input == String, Output == Bool {}

struct PreemptiveClosingStack_LeetCode0020ValidParentheses: LeetCode0020ValidParentheses {
    static func execute(_ input: String) -> Bool {
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
        
        return isValid(input)
    }
}

struct OpeningStack_LeetCode0020ValidParentheses: LeetCode0020ValidParentheses {
    static func execute(_ input: String) -> Bool {
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
        
        return isValid(input)
    }
}

struct BruteForce_LeetCode0020ValidParentheses: LeetCode0020ValidParentheses {
    static func execute(_ input: String) -> Bool {
        func isValid(_ s: String) -> Bool {
            var string = s
            
            while string.contains("()") || string.contains("[]") || string.contains("{}") {
                string = string.replacingOccurrences(of: "()", with: "")
                string = string.replacingOccurrences(of: "[]", with: "")
                string = string.replacingOccurrences(of: "{}", with: "")
            }
            
            return string.isEmpty
        }
        
        return isValid(input)
    }
}
