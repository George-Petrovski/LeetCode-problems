# @param {Integer} n
# @return {Boolean}
def is_ugly(n)
    return false if n == 0
    n /= 5 while n % 5 == 0
    n /= 3 while n % 3 == 0
    n /= 2 while n % 2 == 0
    return n == 1
end