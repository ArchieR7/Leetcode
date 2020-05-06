/*
 You are given an array coordinates, coordinates[i] = [x, y], where [x, y] represents the coordinate of a point. Check if these points make a straight line in the XY plane.
 */

import Foundation

extension Easy {
    static func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        var rate: (Int, Int) = (0, 0)
        for i in 1..<coordinates.count {
            if i == 1 {
                let x: Int = (coordinates[i].first ?? 0) - (coordinates[0].first ?? 0)
                let y: Int = (coordinates[i].last ?? 0) - (coordinates[0].last ?? 0)
                rate = (x, y)
            } else {
                let x: Int = (coordinates[i].first ?? 0) - (coordinates[i - 1].first ?? 0)
                let y: Int = (coordinates[i].last ?? 0) - (coordinates[i - 1].last ?? 0)
                if (rate.0 == 0 && x == 0) || (rate.1 == 0 && y == 0) || (Double(rate.0) / Double(rate.1) == Double(x) / Double(y)) {
                    continue
                } else {
                    return false
                }
            }
        }
        return true
    }
}
