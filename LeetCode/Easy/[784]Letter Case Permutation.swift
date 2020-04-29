/*
 Given a string S, we can transform every letter individually to be lowercase or uppercase to create another string.  Return a list of all possible strings we could create.
 */

import Foundation

extension Easy {
    static func letterCasePermutation(_ S: String) -> [String] {
        var result: [String] = []
        for c in S {
            var new: [String] = []
            if result.isEmpty {
                if Int(String(c)) != nil {
                    result.append(String(c))
                } else {
                    result.append(c.lowercased())
                    result.append(c.uppercased())
                }
            } else {
                for r in result {
                    if Int(String(c)) != nil {
                        new.append(r + String(c))
                    } else {
                        new.append(r + c.lowercased())
                        new.append(r + c.uppercased())
                    }
                }
                result = new
            }
        }
        return result
    }
}
