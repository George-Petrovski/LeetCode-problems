# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    a = s.split()
    return a[-1].length()
end