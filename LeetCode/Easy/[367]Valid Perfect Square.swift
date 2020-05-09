/*
 Given a positive integer num, write a function which returns True if num is a perfect square else False.

 Follow up: Do not use any built-in library function such as sqrt.
 */

import Foundation

extension Easy {
    static func isPerfectSquare(_ num: Int) -> Bool {
        if num == 1 {
            return true
        } else {
            for i in 1..<num {
                let target: Int = i * i
                if target == num {
                    return true
                } else if target > num {
                    return false
                }
            }
            return false
        }
    }
}
