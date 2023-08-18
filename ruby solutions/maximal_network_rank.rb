# @param {Integer} n
# @param {Integer[][]} roads
# @return {Integer}
def maximal_network_rank(n, roads)
    road_map = roads.inject(Hash.new(0)) do |memo, (a, b)|
        memo[a] += 1
        memo[b] += 1
        memo["#{a}->#{b}"] = 1
        memo["#{b}->#{a}"] = 1
        memo
    end

    (0...n).to_a.combination(2).inject(0) do |max_network_rank, (a, b)|
        network_rank = road_map[a] + road_map[b] - road_map["#{a}->#{b}"]
        network_rank > max_network_rank ? network_rank : max_network_rank
    end
end