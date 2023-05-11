# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    return 0 if n == 0
    return 1 if n == 1
    return 2 if n == 2
    res = [0] * n
    res[1], res[2] = 1, 2
    for i in (3..n)
        res[i] = res[i-1] + res[i-2]
    end
    return res[n]
end