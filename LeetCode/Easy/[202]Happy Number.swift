/*
 Write an algorithm to determine if a number n is "happy".
 
 A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.
 
 Return True if n is a happy number, and False if not.
 */
import Foundation

extension Easy {
    static func isHappy(_ n: Int) -> Bool {
        var result: Int = n
        var dictionary: [Int: Bool] = [:]
        while dictionary[result] == nil {
            dictionary[result] = true
            let nums: [Int] = String(result).map { Int(String($0))! }
            result = 0
            for num in nums {
                result += num * num
            }
        }
        return result == 1
    }
}
