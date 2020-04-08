//
//  [1046]Last Stone Weight.swift
//  LeetCode
//
//  Created by Archie on 2020/4/20.
//  Copyright © 2020 Archie. All rights reserved.
//

import Foundation

extension Easy {
    static func lastStoneWeight(_ stones: [Int]) -> Int {
        var sorted = stones.sorted()
        while sorted.count > 1 {
            let heaviest = sorted.removeLast()
            let second = sorted.removeLast()
            if heaviest != second {
                sorted.append(heaviest - second)
            }
            sorted.sort()
        }
        return sorted.first ?? 0
    }
}
