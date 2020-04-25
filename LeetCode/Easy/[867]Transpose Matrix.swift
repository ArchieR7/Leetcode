/*
 Given a matrix A, return the transpose of A.
 
 The transpose of a matrix is the matrix flipped over it's main diagonal, switching the row and column indices of the matrix.
 */

import Foundation

extension Easy {
    static func transpose(_ A: [[Int]]) -> [[Int]] {
        A.reduce(Array(repeatElement([Int](), count: A.first?.count ?? 0))) { result, array -> [[Int]] in
            var new = result
            array.enumerated().forEach { index, number in
                new[index].append(number)
            }
            return new
        }
    }
}
