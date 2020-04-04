/*
 Say you have an array prices for which the ith element is the price of a given stock on day i.

 Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).

 Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).
 */

import Foundation

extension Easy {
    static func maxProfit(_ prices: [Int]) -> Int {
        var result = 0
        for (index, price) in prices.enumerated() {
            if index == prices.count - 1 {
                return result
            } else {
                if prices[index + 1] > price {
                    result += prices[index + 1] - price
                }
            }
        }
        return result
    }
}
