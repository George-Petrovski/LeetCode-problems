# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    low, high = 0, nums.length()
    while low < high
        mid = (low + high) / 2
        if target > nums[mid]
            low = mid + 1
        else
            high = mid
        end
    end
    return low
end