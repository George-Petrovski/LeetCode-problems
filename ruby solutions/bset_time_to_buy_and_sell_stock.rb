# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    return 0 if !prices

    maxP = 0
    minP = prices[0]
    (1...prices.length).each {
        |i|
        maxP = [maxP, prices[i] - minP].max
        minP = [minP, prices[i]].min
    }
    return maxP
end