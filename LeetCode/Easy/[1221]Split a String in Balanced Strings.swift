/*
 Balanced strings are those who have equal quantity of 'L' and 'R' characters.

 Given a balanced string s split it in the maximum amount of balanced strings.

 Return the maximum amount of splitted balanced strings.
 */

import Foundation

extension Easy {
    static func balancedStringSplit(_ s: String) -> Int {
        var count = 0
        return s.reduce(0) { result, character -> Int in
            count += character == "R" ? 1 : -1
            return count == 0 ? result + 1 : result
        }
    }
}
