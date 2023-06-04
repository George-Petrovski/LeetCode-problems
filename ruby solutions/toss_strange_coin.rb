# @param {Float[]} prob
# @param {Integer} target
# @return {Float}
def probability_of_heads(prob, target)
    dp = [1] + [0] * target
    prob.each {
        |p|
        (target).downto(0).each { 
            |k| 
            dp[k] = (k > 0 ? dp[k - 1] : 0) * p + dp[k] * (1 - p) 
        }
    }
    dp[target]
end