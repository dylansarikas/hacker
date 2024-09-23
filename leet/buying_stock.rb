def max_profit(prices)
    profit = 0
    buy = 0
    sell = 1
    while sell < prices.length
        # puts "wow"
        # puts prices[buy]
        # puts prices[sell]
        if prices[sell] < prices[buy]
            buy = sell
        else
            profit = [profit, (prices[sell] - prices[buy])].max
        end
        sell += 1
    end

    puts profit
end

max_profit([7,1,5,3,6,4])
max_profit([7,6,4,3,1])
max_profit([2,1,4])
max_profit([2,8,1,3])