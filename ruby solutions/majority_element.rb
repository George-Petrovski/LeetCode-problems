# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    candidate = nil
    count = 0
    nums.each do |ele|
    print(ele)
        candidate = ele if count == 0
        if candidate == ele
            count += 1
        else
            count -= 1
        end
    end

    count = 0
    nums.each do |ele|
        count += 1 if ele == candidate
    end

    count > nums.count/2 ? candidate : nil
end