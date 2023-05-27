# @param {Integer[]} stone_value
# @return {String}
def stone_game_iii(stone_value)
    responses = [0, 0, 0]
    sum = 0
    stone_value.reverse_each do
        sum += _1
        responses.unshift(sum - responses.min).pop
    end
    %w[Tie Alice Bob][responses[0] * 2 <=> sum]
end