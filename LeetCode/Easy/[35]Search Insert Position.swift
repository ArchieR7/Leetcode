/*
 Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
 
 You may assume no duplicates in the array.
 */

import Foundation

extension Easy {
    static func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for (index, num) in nums.enumerated() {
            if target <= num {
                return index
            }
        }
        return nums.count
    }
}
