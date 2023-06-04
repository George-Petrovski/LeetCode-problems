# @param {String} s
# @return {Boolean}
def can_permute_palindrome(s)
    ss = Set.new
    s.each_char do |c|
        if ss.include?c
            ss.delete(c)
        else
            ss << c
        end
    end
    ss.size<=1
end