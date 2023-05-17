# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    s.gsub!(/[^0-9a-z]/i, '')
    s.downcase!
    (0...s.length/2).each {
        |i|
        if s[i] != s[-1-i]
            return false
        end
    }
    return true
end