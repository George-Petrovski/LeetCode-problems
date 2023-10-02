# @param {String} colors
# @return {Boolean}

require 'enumerator'

def winner_of_game(colors)
    c = Hash.new(0)

    colors.each_char.chunk { |x| x }.each do |x, t|
      c[x] += [t.size - 2, 0].max
    end

    c['A'] > c['B']
end