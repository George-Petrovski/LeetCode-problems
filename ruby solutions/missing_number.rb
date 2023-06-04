# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    nums.length * (nums.length+1)/2 - nums.sum
end