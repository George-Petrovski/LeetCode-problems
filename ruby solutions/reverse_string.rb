# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
    return nil if s.empty?

    (s.length / 2).times { |i| s[i], s[~i] = s[~i], s[i] }
end