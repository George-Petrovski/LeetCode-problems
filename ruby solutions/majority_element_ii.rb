# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
    return [] if nums.empty?

    candidate1, candidate2, count1, count2 = 0, 1, 0, 0

    nums.each do |num|
      if num == candidate1
        count1 += 1
      elsif num == candidate2
        count2 += 1
      elsif count1 == 0
        candidate1, count1 = num, 1
      elsif count2 == 0
        candidate2, count2 = num, 1
      else
        count1 -= 1
        count2 -= 1
      end
    end
    [candidate1, candidate2].select { |num| nums.count(num) > nums.length / 3 }
end