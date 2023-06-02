# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
    res = []

    i = 0
    while i < nums.length
        s = e = i

        e += 1 while e+1 < nums.length && nums[e]+1 == nums[e+1]

        if s == e
            res << "#{nums[i]}"
        else
            res << "#{nums[s]}->#{nums[e]}"
        end
        i = e + 1
    end

    res
end