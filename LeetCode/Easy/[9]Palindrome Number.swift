/*
 Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.
 */

import Foundation

extension Easy {
    static func isPalidrome(_ x: Int) -> Bool {
        String(x) == String(String(x).reversed())
    }
}
