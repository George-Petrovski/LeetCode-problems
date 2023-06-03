# @param {String[]} words_dict
# @param {String} word1
# @param {String} word2
# @return {Integer}
def shortest_distance(words_dict, word1, word2)
    min_d = words_dict.length
    s = e = -1
    for i in 0...words_dict.length do
        s = i if words_dict[i] == word1
        e = i if words_dict[i] == word2
        min_d = [min_d, (s-e).abs].min if s != -1 and e != -1
    end
    min_d
end