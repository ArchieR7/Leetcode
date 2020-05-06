/*
 Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

 You may assume that the array is non-empty and the majority element always exist in the array.
 */

import Foundation

extension Easy {
    static func majorityElement(_ nums: [Int]) -> Int {
        let count: Int = nums.count
        var dicionary: [Int: Int] = [:]
        for num in nums {
            dicionary[num, default: 0] += 1
            if (dicionary[num] ?? 0) > count / 2 {
                return num
            }
        }
        return 0
    }
}
