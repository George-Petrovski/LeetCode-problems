# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
    return false if n <= 0
    res = Math.log(n, 3).round()
    return 3**res == n
end