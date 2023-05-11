# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    i, j, k = m-1, n-1, m+n-1
    while j>=0
        if i >= 0 and nums1[i] > nums2[j]
            nums1[k] = nums1[i]
            k-=1
            i-=1
        elsif
            nums1[k] = nums2[j]
            k-=1
            j-=1
        end
    end
end