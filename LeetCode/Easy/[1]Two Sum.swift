/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 */

import Foundation

extension Easy {
    static func twoSum(_ nums: [Int], target: Int) -> [Int] {
        var dictionary = [Int: Int]()
        for (index, i) in nums.enumerated() {
            if let index2: Int = dictionary[target - i], index2 != index {
                return [index, index2]
            } else {
                dictionary[i] = index
            }
        }
        return [Int]()
    }
}
