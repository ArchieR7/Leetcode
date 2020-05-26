/*
 
 */

import Foundation

extension Easy {
    static func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var result: [Int] = []
        for (i, num) in nums.enumerated() {
            result.insert(num, at: index[i])
        }
        return result
    }
}
