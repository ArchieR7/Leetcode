/*
 Implement strStr().

 Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
 */

import Foundation

extension Easy {
    static func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {
            return 0
        } else {
            let needleCount: Int = needle.count
            let haystackCount: Int = haystack.count
            for index in 0..<haystackCount {
                if index + needleCount > haystackCount {
                    return -1
                } else {
                    let start: String.Index = haystack.index(haystack.startIndex, offsetBy: index)
                    let end: String.Index = haystack.index(haystack.startIndex, offsetBy: index + needleCount)
                    if haystack[start..<end] == needle {
                        return index
                    }
                }
            }
            return -1
        }
    }
}
