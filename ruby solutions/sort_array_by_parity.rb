# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
    res = []
    nums.each do |i|
      if i.even?
        res.unshift(i)
      else
        res.push(i)
      end
    end
    res
end