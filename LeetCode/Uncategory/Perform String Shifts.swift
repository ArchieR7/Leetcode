/*
 ou are given a string s containing lowercase English letters, and a matrix shift, where shift[i] = [direction, amount]:
 
 direction can be 0 (for left shift) or 1 (for right shift).
 amount is the amount by which string s is to be shifted.
 A left shift by 1 means remove the first character of s and append it to the end.
 Similarly, a right shift by 1 means remove the last character of s and add it to the beginning.
 Return the final string after all operations.
 */

import Foundation

func stringShift(_ s: String, _ shift: [[Int]]) -> String {
    var result: String = s
    for action in shift {
        guard let type: Int = action.first, let offset: Int = action.last else { return s }
        if type == 0 {
            let from: String.Index = result.index(result.startIndex, offsetBy: 0)
            let to: String.Index = result.index(result.startIndex, offsetBy: offset)
            result = "\(String(result[to..<result.endIndex]))\(String(result[from..<to]))"
        } else {
            let from: String.Index = result.index(result.endIndex, offsetBy: -offset)
            let to: String.Index = result.index(result.endIndex, offsetBy: 0)
            result = "\(String(result[from..<to]))\(String(result[result.startIndex..<from]))"
        }
    }
    return result
}
