# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
    people = Hash.new() { |h, k| h[k] = Array.new }
    result = []

    group_sizes.each.with_index { 
        |size, idx| 
        people[size] << idx
        if people[size].length() == size
            result << people[size]
            people[size] = []
        end
        }
    result
end