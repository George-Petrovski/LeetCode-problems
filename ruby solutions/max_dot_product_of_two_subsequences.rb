# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def max_dot_product(nums1, nums2)
    m = nums1.length
    n = nums2.length
    
    dp = Array.new(m + 1) { Array.new(n + 1, -Float::INFINITY) }
    
    (1..m).each do |i|
      (1..n).each do |j|
        dp[i][j] = [
          dp[i - 1][j - 1] + nums1[i - 1] * nums2[j - 1],
          dp[i - 1][j],
          dp[i][j - 1],
          nums1[i - 1] * nums2[j - 1]
        ].max
      end
    end
    
    dp[m][n]
end