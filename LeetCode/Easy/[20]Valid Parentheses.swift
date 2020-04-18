/*
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Note that an empty string is also considered valid.
 */

import Foundation

extension Easy {
    static func isValid(_ s: String) -> Bool {
        var result = String()
        for character in s {
            if result.last == "{" {
                if character == "}" {
                    result = String(result.dropLast())
                } else if ["{", "(", "["].contains(character) {
                    result = "\(result)\(character)"
                } else {
                    return false
                }
            } else if result.last == "(" {
                if character == ")" {
                    result = String(result.dropLast())
                } else if ["{", "(", "["].contains(character) {
                    result = "\(result)\(character)"
                } else {
                    return false
                }
            } else if result.last == "[" {
                if character == "]" {
                    result = String(result.dropLast())
                } else if ["{", "(", "["].contains(character) {
                    result = "\(result)\(character)"
                } else {
                    return false
                }
            } else {
                result = String(character)
            }
        }
        return result.isEmpty
    }
}
