class Solution:
    def maxProfit(prices: list[int]) -> int:
        profit = 0
        buy = 0
        sell = 1
        while sell < len(prices):
            if prices[sell] < prices[buy]:
                buy = sell
            else:
                profit = max(profit, (prices[sell] - prices[buy]))

            sell += 1

        print(profit)

Solution.maxProfit([7,1,5,3,6,4])
Solution.maxProfit([7,6,4,3,1])
Solution.maxProfit([2,1,4])