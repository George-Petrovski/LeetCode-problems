# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
    count = Hash.new(0)

    t.each_char { |c| count[c] += 1 }

    s.each_char do |c|
      count[c] -= 1
      count.delete(c) if count[c].zero?
    end

    count.keys.first
end