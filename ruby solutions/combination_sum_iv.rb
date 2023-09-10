# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def combination_sum4(nums, target)
    intermediate = Array.new(target + 1)
    intermediate[0] = 1

    (1..target).each do |i|
        intermediate[i] = nums.filter { |num| num <= i }.reduce(0) { |sum, num| sum + intermediate[i - num] }
    end

    intermediate[target]
end