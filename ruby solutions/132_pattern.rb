# @param {Integer[]} nums
# @return {Boolean}
def find132pattern(nums)
    n = nums.length

    return false if n < 3

    decreasing_stack = []

    max_third_element = -Float::INFINITY

    (n-1).downto(0).each do |i|
      current_number = nums[i]

      return true if current_number < max_third_element

      while !decreasing_stack.empty? && decreasing_stack.first < current_number
        max_third_element = decreasing_stack.shift
      end

      decreasing_stack.unshift(current_number)
    end
    false
end