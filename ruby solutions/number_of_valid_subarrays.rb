# @param {Integer[]} nums
# @return {Integer}
def valid_subarrays(nums)
    stack = []
    ans = 0

    nums.each do |num|
      stack.pop() while !stack.empty? && num < stack.last
      stack.append(num)
      ans += stack.length
    end

    ans
end