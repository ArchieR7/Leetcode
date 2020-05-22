/*
 Given a string, sort it in decreasing order based on the frequency of characters.

 Example 1:

 Input:
 "tree"

 Output:
 "eert"

 Explanation:
 'e' appears twice while 'r' and 't' both appear once.
 So 'e' must appear before both 'r' and 't'. Therefore "eetr" is also a valid answer.
 Example 2:

 Input:
 "cccaaa"

 Output:
 "cccaaa"

 Explanation:
 Both 'c' and 'a' appear three times, so "aaaccc" is also a valid answer.
 Note that "cacaca" is incorrect, as the same characters must be together.
 Example 3:

 Input:
 "Aabb"

 Output:
 "bbAa"

 Explanation:
 "bbaA" is also a valid answer, but "Aabb" is incorrect.
 Note that 'A' and 'a' are treated as two different characters.
 */

import Foundation

extension Medium {
    static func frequencySort(_ s: String) -> String {
        var dictionary: [String: Int] = [:]
        for c in s {
            dictionary[String(c), default: 0] += 1
        }
        return String(s.sorted { (lhs, rhs) -> Bool in
            guard let lhsValue: Int = dictionary[String(lhs)], let rhsValue: Int = dictionary[String(rhs)] else { return false }
            if lhsValue == rhsValue {
                return lhs < rhs
            } else {
                return lhsValue > rhsValue
            }
        })
    }
}
