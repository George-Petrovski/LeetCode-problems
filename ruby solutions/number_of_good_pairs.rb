# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
    d = Hash.new(0)
    res = 0
    
    nums.each do |num|
      res += d[num]
      d[num] += 1
    end

    res
end