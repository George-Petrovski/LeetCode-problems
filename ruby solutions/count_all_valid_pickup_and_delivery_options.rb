# @param {Integer} n
# @return {Integer}
def count_orders(n)
    ans = 1
    mod = (10**9) + 7
    (1..n).each do |i|
        ans *= i * (2*i-1)
        ans %= mod
    end
    return ans
end