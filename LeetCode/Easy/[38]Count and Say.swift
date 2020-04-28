/*
 The count-and-say sequence is the sequence of integers with the first five terms as following:

 1.     1
 2.     11
 3.     21
 4.     1211
 5.     111221
 1 is read off as "one 1" or 11.
 11 is read off as "two 1s" or 21.
 21 is read off as "one 2, then one 1" or 1211.

 Given an integer n where 1 ≤ n ≤ 30, generate the nth term of the count-and-say sequence. You can do so recursively, in other words from the previous member read off the digits, counting the number of digits in groups of the same digit.

 Note: Each term of the sequence of integers will be represented as a string.


 */

import Foundation

extension Easy {
    static func countAndSay(_ n: Int) -> String {
        var result: String = "1"
        for _ in 1..<n {
            var last: String = String(result.first!)
            var count: Int = 0
            var new: String = ""
            for c in result {
                if String(c) == last {
                    count += 1
                } else {
                    new += "\(count)\(last)"
                    count = 1
                    last = String(c)
                }
            }
            new += "\(count)\(last)"
            result = new
        }
        return result
    }
}