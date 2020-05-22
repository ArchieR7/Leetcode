//
//  main.swift
//  LeetCode
//
//  Created by Archie on 2020/4/20.
//  Copyright © 2020 Archie. All rights reserved.
//

import Foundation

struct Easy {}
struct Medium {}

func countSquares(_ matrix: [[Int]]) -> Int {
    let m: Int = matrix.count
    let n: Int = matrix[0].count
    var ans: [[Int]] = matrix
    for row in 0..<m {
        for col in 0..<n {
            if matrix[row][col] == 1 {
                if row == 0 || col == 0 {
                    continue
                } else {
                    ans[row][col] = min(ans[row - 1][col], min(ans[row - 1][col - 1], ans[row][col - 1])) + 1
                }
            }
        }
    }
    return ans.reduce(0) { (result, n) -> Int in
        result + n.reduce(0) { (result, num) -> Int in
            num + result
        }
    }
}

print(countSquares([[0,1,1,1], [1,1,1,1], [0,1,1,1]]))
