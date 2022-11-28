def stock_picker(prices)
    maxProfit = 0
    maxProfitDays = Array.new
    for i in 0..(prices.size-2)
        highest = prices[i+1..-1].max()
        profit = highest-prices[i]
        if profit>maxProfit
            maxProfit = profit
            maxProfitDays = [i, prices.index(highest)]
        end
    end
    return maxProfitDays
end

stock_picker([17,3,6,9,15,8,6,1,10])