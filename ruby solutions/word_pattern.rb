# @param {String} pattern
# @param {String} s
# @return {Boolean}
require 'set'
def word_pattern(pattern, s)
    words, w_to_p = s.split(' '), Hash.new
    return false if pattern.length != words.length
    return false if (Set.new(pattern.chars)).length != (Set.new(words)).length
    for i in (0...words.length) do
        if !(w_to_p.key? words[i])
            w_to_p[words[i]] = pattern[i]
        elsif w_to_p[words[i]] != pattern[i]
            return false
        end
    end

    return true
end