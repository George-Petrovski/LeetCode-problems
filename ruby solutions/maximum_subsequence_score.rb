# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer}
def max_score(nums1, nums2, k)
    n = nums2.size
    inds_max_min = (0...n).to_a.sort_by { |i| -nums2[i] }
  
    # DESC
    sorted_array = []
    max  = 0
    sum = 0
    inds_max_min.each do |index|
      next if sorted_array.size == k && sorted_array.last >= nums1[index]
      sum += nums1[index]
      insert_in_sort_array(sorted_array, nums1[index])
      sum -= sorted_array.pop if sorted_array.size > k
      max = [max, sum * nums2[index]].max if sorted_array.size == k
    end
  
    max
  end
  
  def insert_in_sort_array(array, insert_value)
    insert_at = array.bsearch_index { |value| (value <=> insert_value) <= 0 } || array.size
    array.insert(insert_at, insert_value)
  end