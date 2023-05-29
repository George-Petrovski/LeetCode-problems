# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    touched = []
    while n != 1
        return false if touched.include? n
        touched << n
        n = n.digits.sum { |el| el * el }
    end
    return true
end