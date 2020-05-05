/*
Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
*/

import Foundation

extension Easy {
    static func firstUniqChar(_ s: String) -> Int {
        var dicionary: [String: Int] = [:]
        for (index, c) in s.enumerated() {
            if dicionary[String(c)] != nil {
                dicionary[String(c)] = -1
            } else {
                dicionary[String(c)] = index
            }
        }
        var answer: Int = s.count
        for index in dicionary.values {
            if index == -1 {
                continue
            } else {
                answer = min(answer, index)
            }
        }
        if answer == s.count {
            return -1
        } else {
            return answer
        }
    }
}
