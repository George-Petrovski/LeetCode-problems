# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer} dp[j-1]>curr ? dp[j-1]:curr
def max_uncrossed_lines(nums1, nums2)
    m, n = nums1.length, nums2.length
    if m < n
        nums1, nums2, m, n = nums2, nums1, n, m
    end
    dp = [0] * (n + 1)
    for i in (1..m+1)
        prev = 0
        for j in (1..n+1)
            curr = dp[j] 
            if nums1[i-1] == nums2[j-1]
                dp[j] = prev + 1
            else
                if dp[j] != nil
                    dp[j] = [dp[j-1], curr].max
                else
                    dp[j] = dp[j-1]
                end
            end
            prev = curr
        end
    end
    return dp[n]
end