# @param {String} current_state
# @return {String[]}
def generate_possible_next_moves(s)
    (0..s.size).select { |i| s[i,2] == "++" }.map { |i| s[0,i] + "--" + s[i+2..-1] }
end