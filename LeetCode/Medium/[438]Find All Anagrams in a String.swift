/*
 Given a string s and a non-empty string p, find all the start indices of p's anagrams in s.
 
 Strings consists of lowercase English letters only and the length of both strings s and p will not be larger than 20,100.
 
 The order of output does not matter.
 
 Example 1:
 
 Input:
 s: "cbaebabacd" p: "abc"
 
 Output:
 [0, 6]
 
 Explanation:
 The substring with start index = 0 is "cba", which is an anagram of "abc".
 The substring with start index = 6 is "bac", which is an anagram of "abc".
 Example 2:
 
 Input:
 s: "abab" p: "ab"
 
 Output:
 [0, 1, 2]
 
 Explanation:
 The substring with start index = 0 is "ab", which is an anagram of "ab".
 The substring with start index = 1 is "ba", which is an anagram of "ab".
 The substring with start index = 2 is "ab", which is an anagram of "ab".
 */

import Foundation

extension Medium {
    static func findAnagrams(_ s: String, _ p: String) -> [Int] {
        func unicodePoint(_ character: Character) -> Int {
            let a: Int = Int(Character("a").unicodeScalars["a".unicodeScalars.startIndex].value)
            return Int(character.unicodeScalars[String(character).unicodeScalars.startIndex].value) - a
        }
        
        func compare(lhs: [Int], rhs: [Int]) -> Bool {
            for i in 0..<26 {
                if lhs[i] != rhs[i] {
                    return false
                }
            }
            return true
        }
        
        if s.isEmpty || p.isEmpty || s.count < p.count {
            return []
        }
        
        let sizeP: Int = p.count
        let sizeS: Int = s.count
        var arrayP: [Int] = Array(repeating: 0, count: 26)
        var arrayS: [Int] = Array(repeating: 0, count: 26)
        var result: [Int] = []
        for i in 0..<sizeP {
            let sc: Character = s[s.index(s.startIndex, offsetBy: i)]
            let pc: Character = p[p.index(p.startIndex, offsetBy: i)]
            arrayS[unicodePoint(sc)] += 1
            arrayP[unicodePoint(pc)] += 1
        }
        
        if compare(lhs: arrayP, rhs: arrayS) {
            result.append(0)
        }
        
        for i in sizeP..<sizeS {
            let sc: Character = s[s.index(s.startIndex, offsetBy: i)]
            let window: Character = s[s.index(s.startIndex, offsetBy: i - sizeP)]
            arrayS[unicodePoint(sc)] += 1
            arrayS[unicodePoint(window)] -= 1
            if compare(lhs: arrayP, rhs: arrayS) {
                result.append(i - sizeP + 1)
            }
        }
        return result
    }
}
