# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    output = 0
    for i in 0...nums.length
        output ^= nums[i]
    end
    output
end