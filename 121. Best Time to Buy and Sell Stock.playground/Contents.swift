/// You are given an array prices where prices[i] is the price of a given stock on the ith day.
/// You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
/// Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

/// Constraints:
/// 1 <= prices.length <= 105
/// 0 <= prices[i] <= 104

func maxProfit(_ prices: [Int]) -> Int {
    var profit = 0
    var bayDay = prices.first ?? 0
    
    for i in 0..<prices.count {
        profit = max(profit, prices[i] - bayDay)
        bayDay = min(bayDay, prices[i])
    }
    return profit
}

maxProfit([7,6,4,3,1])

