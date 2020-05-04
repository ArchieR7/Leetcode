/*
 Given a positive integer num, output its complement number. The complement strategy is to flip the bits of its binary representation.
 */

import Foundation

extension Easy {
    static func findComplement(_ num: Int) -> Int {
        let binary: String = String(num, radix: 2)
        let result: String = binary.map { c -> String in
            let int: Int = Int(String(c)) ?? 0
            let value: Int = -(int - 1)
            return value.description
        }
        .joined()
        return Int(result, radix: 2) ?? 0
    }
}
