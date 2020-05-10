/*
 In a town, there are N people labelled from 1 to N.  There is a rumor that one of these people is secretly the town judge.

 If the town judge exists, then:

 The town judge trusts nobody.
 Everybody (except for the town judge) trusts the town judge.
 There is exactly one person that satisfies properties 1 and 2.
 You are given trust, an array of pairs trust[i] = [a, b] representing that the person labelled a trusts the person labelled b.

 If the town judge exists and can be identified, return the label of the town judge.  Otherwise, return -1.
 */

import Foundation

extension Easy {
    static func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        if N == 1, trust.isEmpty {
            return 1
        }
        var judge: [Int: Int] = [:]
        var unjudge: [Int: Bool] = [:]
        for trusted in trust {
            judge[trusted.last ?? 0, default: 0] += 1
            unjudge[trusted.first ?? 0, default: false] = false
        }
        unjudge.keys.forEach {
            judge[$0] = 0
        }
        return judge.first { (key, value) -> Bool in
            value == N - 1
        }?.key ?? -1
    }
}
