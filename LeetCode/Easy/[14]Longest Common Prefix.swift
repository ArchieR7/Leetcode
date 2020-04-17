/*
 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".
 */

import Foundation

extension Easy {
    static func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix: String = strs.first ?? ""
        for s in strs {
            if s.hasPrefix(prefix) {
                continue
            } else {
                var new: String = prefix
                while new.isEmpty == false {
                    _ = new.removeLast()
                    prefix = new
                    if s.hasPrefix(new) {
                        break
                    }
                }
            }
        }
        return prefix
    }
}
