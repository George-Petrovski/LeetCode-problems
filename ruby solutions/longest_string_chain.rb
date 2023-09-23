# @param {String[]} words
# @return {Integer}
def longest_str_chain(words)
    dp = {}

    words.sort_by!(&:length)

    words.each do |w|
      dp[w] = (0...w.length).map do |i|
        temp = w[0...i] + w[i + 1..-1]
        dp[temp].to_i + 1
      end.max
    end

    dp.values.max
end