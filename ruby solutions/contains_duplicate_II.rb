# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
    h = Hash.new

    nums.each_with_index do |num, index|
        return true if h[num] != nil && (h[num] - index).abs <= k
        h[num] = index
    end
    false
end