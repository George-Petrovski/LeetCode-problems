from typing import List


class Solution:
    def maxDotProduct(self, nums1: List[int], nums2: List[int]) -> int:
        # Get the lengths of the input arrays nums1 and nums2
        m = len(nums1)
        n = len(nums2)
        
        # Initialize a 2D array dp with dimensions (m+1) x (n+1) filled with negative infinity
        dp = [[float('-inf')] * (n + 1) for _ in range(m + 1)]
        
        # Iterate over the elements of nums1 and nums2
        for i in range(1, m + 1):
            for j in range(1, n + 1):
                # Calculate the maximum dot product at position (i, j)
                # by considering four options:
                # 1. dp[i-1][j-1] + nums1[i-1] * nums2[j-1]
                #    This represents including both nums1[i-1] and nums2[j-1]
                # 2. dp[i-1][j]
                #    This represents excluding nums1[i-1] and keeping nums2[j-1]
                # 3. dp[i][j-1]
                #    This represents keeping nums1[i-1] and excluding nums2[j-1]
                # 4. nums1[i-1] * nums2[j-1]
                #    This represents starting a new subarray at (i, j)
                dp[i][j] = max(
                    dp[i - 1][j - 1] + nums1[i - 1] * nums2[j - 1],
                    dp[i - 1][j],
                    dp[i][j - 1],
                    nums1[i - 1] * nums2[j - 1]
                )
        
        # Return the maximum dot product found in the dp matrix
        return dp[m][n]