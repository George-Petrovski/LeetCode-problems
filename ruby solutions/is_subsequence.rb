# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
    s_idx = t_idx = 0

    while s_idx < s.length && t_idx < t.length
        s_idx += 1 if s[s_idx] == t[t_idx]
        t_idx += 1
    end
    s_idx == s.length
end