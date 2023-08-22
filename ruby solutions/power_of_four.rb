# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
    n > 0 && 4**Math::log(n, 4).round == n
end