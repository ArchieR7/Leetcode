/*
Given a 32-bit signed integer, reverse digits of an integer.
 */

import Foundation

extension Easy {
    static func reverse(_ x: Int) -> Int {
        let reversed = String(String(x).reversed())
        if reversed.hasSuffix("-") {
            return -Int(Int32(String(reversed.dropLast())) ?? 0)
        } else {
            return Int(Int32(reversed) ?? 0)
        }
    }
}
