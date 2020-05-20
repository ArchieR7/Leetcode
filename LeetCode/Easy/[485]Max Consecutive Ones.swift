/*
 Given a binary array, find the maximum number of consecutive 1s in this array.

 Example 1:

 Input: [1,1,0,1,1,1]
 Output: 3
 Explanation: The first two digits or the last three digits are consecutive 1s.
     The maximum number of consecutive 1s is 3.
 Note:

 The input array will only contain 0 and 1.
 The length of input array is a positive integer and will not exceed 10,000
 */

import Foundation

extension Easy {
    static func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var result: Int = 0
        var current: Int = 0
        for num in nums {
            if num == 1 {
                current += 1
            } else {
                current = 0
            }
            result = max(current, result)
        }
        return result
    }
}
