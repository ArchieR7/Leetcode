/*
 Given a non-negative integer num represented as a string, remove k digits from the number so that the new number is the smallest possible.
 
 Note:
 
 The length of num is less than 10002 and will be ≥ k.
 The given num does not contain any leading zero.
 Example 1:
 
 Input: num = "1432219", k = 3
 Output: "1219"
 Explanation: Remove the three digits 4, 3, and 2 to form the new number 1219 which is the smallest.
 Example 2:
 
 Input: num = "10200", k = 1
 Output: "200"
 Explanation: Remove the leading 1 and the number is 200. Note that the output must not contain leading zeroes.
 Example 3:
 
 Input: num = "10", k = 2
 Output: "0"
 Explanation: Remove all the digits from the number and it is left with nothing which is 0.
 */

import Foundation

extension Medium {
    static func removeKdigits(_ num: String, _ k: Int) -> String {
        if num.count == k {
            return "0"
        }
        var times: Int = k
        var stack: [Character] = []
        for n in num {
            while times > 0,
                let last: Character = stack.last,
                Int(String(last))! > Int(String(n))! {
                    _ = stack.popLast()
                    times -= 1
            }
            stack.append(n)
        }
        while times > 0 {
            _ = stack.popLast()
            times -= 1
        }
        var result: String = String(stack)
        while result.hasPrefix("0") {
            result.removeFirst()
        }
        return result.isEmpty ? "0" : result
    }
}
