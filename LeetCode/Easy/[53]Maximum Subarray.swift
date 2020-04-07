/*
 Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
 */
import Foundation

extension Easy {
    static func maxSubArray(_ nums: [Int]) -> Int {
        var result: Int = nums.first ?? 0
        var sum: Int = 0
        for num in nums {
            if sum + num > 0 {
                sum += num
            } else {
                sum = 0
            }
            if sum > 0 {
                result = max(result, sum)
            } else {
                result = max(result, num)
            }
        }
        return result
    }
}
