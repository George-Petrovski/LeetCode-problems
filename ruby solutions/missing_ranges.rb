# @param {Integer[]} nums
# @param {Integer} lower
# @param {Integer} upper
# @return {Integer[][]}
def find_missing_ranges(nums, lower, upper)
    res = []
    return [[lower,upper]] if nums == []
    res.append([lower, nums[0] - 1]) if nums[0] > lower
    if nums.length > 0
        prev = nums[0]
        (0...nums.length).each { |i| 
            if nums[i] - prev > 1
                res.append([nums[i-1] + 1, nums[i] - 1])
            end
            prev = nums[i]
        }
    end
    res.append([nums[-1] + 1, upper]) if nums[-1] < upper
    res
end