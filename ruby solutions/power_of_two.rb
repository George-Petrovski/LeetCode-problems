# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
    return n <= 0 ? false : (2**31 % n == 0)
end