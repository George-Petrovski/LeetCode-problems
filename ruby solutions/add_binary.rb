# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    res = []
    carry = 0
    i = a.length - 1
    j = b.length - 1

    while i >= 0 or j >= 0 or carry > 0
        if i >= 0
            carry += a[i].to_i
            i -= 1
        end
        if j >= 0
            carry += b[j].to_i
            j -= 1
        end
        res << (carry % 2)
        carry = carry.div(2)
    end
    return res.reverse.join
end