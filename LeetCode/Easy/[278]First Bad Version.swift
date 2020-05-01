/*
 You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.

 Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.

 You are given an API bool isBadVersion(version) which will return whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.
 */

import Foundation

extension Easy {
    static func firstBadVersion(_ n: Int) -> Int {
        if isBadVersion(1) {
            return 1
        }
        var lower: Int = 1
        var upper: Int = n
        while lower + 1 < upper {
            let version: Int = lower + (upper - lower) / 2
            if isBadVersion(version) {
                upper = version
            } else {
                lower = version
            }
        }
        if isBadVersion(lower) {
            return lower
        } else if isBadVersion(upper){
            return upper
        }
        return -1
    }
    
    private static func isBadVersion(_ num: Int) -> Bool {
        num >= 1702766719
    }
}
