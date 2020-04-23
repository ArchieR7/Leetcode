/*
 Given an array of integers arr, write a function that returns true if and only if the number of occurrences of each value in the array is unique.
 */

import Foundation

extension Easy {
    static func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var dictionary: [Int: Int] = [:]
        var countDictionary: [Int: Int] = [:]
        var unique = true
        arr.forEach { number in
            if let count = dictionary[number] {
                dictionary[number] = count + 1
            } else {
                dictionary[number] = 1
            }
        }
        dictionary.forEach { key, count in
            if countDictionary[count] == nil {
                countDictionary[count] = key
            } else {
                unique = false
                return
            }
        }
        return unique
    }
}
