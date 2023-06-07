# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    slow = 0
    for fast in (0...nums.length) do
        nums[slow], nums[fast] = nums[fast], nums[slow] if nums[fast] != 0 && nums[slow] == 0
        slow += 1 if nums[slow] != 0
    end
end