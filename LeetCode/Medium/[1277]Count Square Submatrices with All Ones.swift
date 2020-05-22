/*
 Given a m * n matrix of ones and zeros, return how many square submatrices have all ones.

  

 Example 1:

 Input: matrix =
 [
   [0,1,1,1],
   [1,1,1,1],
   [0,1,1,1]
 ]
 Output: 15
 Explanation:
 There are 10 squares of side 1.
 There are 4 squares of side 2.
 There is  1 square of side 3.
 Total number of squares = 10 + 4 + 1 = 15.
 Example 2:

 Input: matrix =
 [
   [1,0,1],
   [1,1,0],
   [1,1,0]
 ]
 Output: 7
 Explanation:
 There are 6 squares of side 1.
 There is 1 square of side 2.
 Total number of squares = 6 + 1 = 7.
  

 Constraints:

 1 <= arr.length <= 300
 1 <= arr[0].length <= 300
 0 <= arr[i][j] <= 1
 */

import Foundation

extension Medium {
    static func countSquares(_ matrix: [[Int]]) -> Int {
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
}
