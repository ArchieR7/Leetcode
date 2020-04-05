/*
 Given an array of strings, group anagrams together.
 */

import Foundation

extension Medium {
    static func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result: [String: [String]] = [:]
        for str in strs {
            let key: String = str.sorted().description
            if let value: [String] = result[key] {
                result[key] = value + [str]
            } else {
                result[key] = [str]
            }
        }
        return result.values.compactMap { $0 }
    }
}
