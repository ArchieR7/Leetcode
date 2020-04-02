/*
 Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
 */

import Foundation

extension Easy {
    static func moveZeroes(_ nums: inout [Int]) {
        nums.sort { (lhs, rhs) -> Bool in
            if lhs == 0 {
                return false
            } else if rhs == 0 {
                return true
            } else {
                return false
            }
        }
    }
}
