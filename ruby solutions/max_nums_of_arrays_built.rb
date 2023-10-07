# @param {Integer} n
# @param {Integer} m
# @param {Integer} k
# @return {Integer}
def num_of_arrays(n, m, k)
    mod = 10**9 + 7

    dp = Array.new(m + 1) { Array.new(k + 1, 0) }
    prefix = Array.new(m + 1) { Array.new(k + 1, 0) }
    prev_dp = Array.new(m + 1) { Array.new(k + 1, 0) }
    prev_prefix = Array.new(m + 1) { Array.new(k + 1, 0) }

    (1..m).each do |j|
      prev_dp[j][1] = 1
      prev_prefix[j][1] = j
    end

    (2..n).each do |_|
      dp = Array.new(m + 1) { Array.new(k + 1, 0) }
      prefix = Array.new(m + 1) { Array.new(k + 1, 0) }

      (1..m).each do |max_num|
        (1..k).each do |cost|
          dp[max_num][cost] = (max_num * prev_dp[max_num][cost]) % mod

          if max_num > 1 && cost > 1
            dp[max_num][cost] += prev_prefix[max_num - 1][cost - 1]
            dp[max_num][cost] %= mod
          end

          prefix[max_num][cost] = (prefix[max_num - 1][cost] + dp[max_num][cost]) % mod
        end
      end

      prev_dp = dp.map(&:dup)
      prev_prefix = prefix.map(&:dup)
    end

    prefix[m][k]
end