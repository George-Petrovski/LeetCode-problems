# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def num_subseq(nums, target)
    nums = nums.sort
    l, r = 0, nums.length() - 1
    res = 0
    mod = 10**9 + 7
    while l <= r
        if nums[l] + nums[r] > target
            r -= 1
        else
            res += (2**(r - l)) % mod
            l += 1
        end
    end
    res % mod
end