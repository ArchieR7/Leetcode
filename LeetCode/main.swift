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

//func intervalIntersection(_ A: [[Int]], _ B: [[Int]]) -> [[Int]] {
//    var indexA: Int = 0
//    var indexB: Int = 0
//    let sizeA: Int = A.count
//    let sizeB: Int = B.count
//    var result: [[Int]] = []
//    while indexA != (sizeA - 1) || indexB != (sizeB - 1) {
//        let minA: Int = A[indexA][0]
//        let maxA: Int = A[indexA][1]
//        let minB: Int = B[indexB][0]
//        let maxB: Int = B[indexB][1]
//        if maxA > minB {
//            if minA > maxB {
//                indexB = min(indexB + 1, sizeB - 1)
//            } else {
//                let start: Int = max(minA, minB)
//                let end: Int = min(maxA, maxB)
//                result.append([start, end])
//                if end >= maxA {
//                    indexA = min(indexA + 1, sizeA - 1)
//                }
//                if end >= maxB {
//                    indexB = min(indexB + 1, sizeB - 1)
//                }
//            }
//        } else {
//            indexA = min(indexA + 1, sizeA - 1)
//        }
//    }
//    let minA: Int = A[indexA][0]
//    let maxA: Int = A[indexA][1]
//    let minB: Int = B[indexB][0]
//    let maxB: Int = B[indexB][1]
//    if maxA >= minB, minA <= maxB {
//        let start: Int = max(minA, minB)
//        let end: Int = min(maxA, maxB)
//        result.append([start, end])
//    }
//    return result
//}
//
//print(intervalIntersection([[0,2],[5,10],[13,23],[24,25]], [[1,5],[8,12],[15,24],[25,26]]))

//func maxUncrossedLines(_ A: [Int], _ B: [Int]) -> Int {
//    let sizeA: Int = A.count
//    let sizeB: Int = B.count
//    func uncrossedLines(_ index: Int) -> Int {
//        var indexB: Int = 0
//        var result: Int = 0
//        for index in index..<sizeA {
//            var current: Int = indexB
//            while current < sizeB {
//                if A[index] == B[current] {
//                    result += 1
//                    indexB = current + 1
//                    current = sizeB
//                } else {
//                    current += 1
//                }
//            }
//        }
//        return result
//    }
//    var result: Int = 0
//    for index in 0..<sizeA {
//        result = max(result, uncrossedLines(index))
//    }
//    return result
//}
//
//
//print(maxUncrossedLines([1,1,2,1,2], [1,3,2,3,1]))
//print(maxUncrossedLines([2,5,1,2,5], [10,5,2,1,5,2]))

let result = Easy.minimumAbsDifference([40, 11, 26, 27, -40])
print(result)
