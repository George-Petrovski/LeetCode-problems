# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
    res = []
    nums1.each do |i|
      if nums2.include?(i)
        res.append(i)
        nums2.delete_at(nums2.index(i))
      end
    end
    res
end