# @param {String} s
# @param {String} t
# @return {Boolean}
require 'set'

def is_anagram(s, t)
    return false if s.length != t.length
    for l in 'a'..'z'
        return false if s.count(l) != t.count(l)
    end
    return true
end