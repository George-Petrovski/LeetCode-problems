# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    s.chars.map{ |c| s.index(c) } == t.chars.map{ |c| t.index(c) }
end