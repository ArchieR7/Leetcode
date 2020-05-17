/*
 Given two strings s1 and s2, write a function to return true if s2 contains the permutation of s1. In other words, one of the first string's permutations is the substring of the second string.
 */

import Foundation

extension Medium {
    static func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let size: Int = s1.count
        let size2: Int = s2.count
        var dictionary: [String: Int] = [:]
        guard size <= size2 else {
            return false
        }
        for i in 0..<size {
            dictionary[String(s1[s1.index(s1.startIndex, offsetBy: i)]), default: 0] += 1
            dictionary[String(s2[s2.index(s2.startIndex, offsetBy: i)]), default: 0] -= 1
        }
        if dictionary.first(where: { $0.value != 0 }) == nil {
            return true
        }
        for i in size..<size2 {
            dictionary[String(s2[s2.index(s2.startIndex, offsetBy: i)]), default: 0] -= 1
            dictionary[String(s2[s2.index(s2.startIndex, offsetBy: i - size)]), default: 0] += 1
            if dictionary.first(where: { $0.value != 0 }) == nil {
                return true
            }
        }
        return false
    }
}
