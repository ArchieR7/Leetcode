/*
 Given an integer array arr, count element x such that x + 1 is also in arr.

 If there're duplicates in arr, count them seperately.

 */
import Foundation

func countElements(_ arr: [Int]) -> Int {
    var dictionary: [Int: Bool] = [:]
    for num in arr {
        dictionary[num] = true
    }
    var result: Int = 0
    for num in arr {
        if dictionary[num + 1] != nil {
            result += 1
        }
    }
    return result
}
