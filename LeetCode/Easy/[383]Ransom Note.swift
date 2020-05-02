/*
 Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.

 Each letter in the magazine string can only be used once in your ransom note.
 */

import Foundation

extension Easy {
    static func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dicionary: [String: Int] = [:]
        magazine.forEach { (c) in
            dicionary[String(c), default: 0] += 1
        }
        for c in ransomNote {
            if let count: Int = dicionary[String(c)], count > 0 {
                dicionary[String(c)] = count - 1
            } else {
                return false
            }
        }
        return true
    }
}
