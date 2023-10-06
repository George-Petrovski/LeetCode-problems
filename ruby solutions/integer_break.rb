# @param {Integer} n
# @return {Integer}
def integer_break(n)
    return 1 if n == 2
    return 2 if n == 3
    res = 1
    while n > 4
      res *= 3
      n -=3
    end
    res * n
end