/*
 Given a binary array, find the maximum length of a contiguous subarray with equal number of 0 and 1.
 */

import Foundation

extension Medium {
    static func findMaxLength(_ nums: [Int]) -> Int {
        var dicionary: [Int: Int] = [:]
        var answer: Int = 0
        var latest: Int = -1
        for num in nums {
            if let value = dicionary[num] {
                dicionary[num] = value + 1
            } else {
                dicionary[num] = 1
            }
            if dicionary.keys.count == 2 {
                latest = num
            }
            if latest == 1, num != latest {
                dicionary = [:]
            }
            answer = max(answer, 2 * min(dicionary[0] ?? 0, dicionary[1] ?? 0))
        }
        return answer
        // wrong answer
    }
}
