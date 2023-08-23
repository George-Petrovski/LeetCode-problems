# @param {String} s
# @return {String}
def reorganize_string(s)
    n = s.length
    hash = Hash.new(0)
    s.chars.each do |char|
        hash[char] += 1
    end
    return '' if (hash.values.max*2 > n+1)
    task = hash.sort_by{|k, v| -v}
    i = 0
    print(task)
    task.each_with_index do |array|
        array[1].times do
            s[i] = array[0]
            i += 2
            if i > n-1
                i = 1
            end
        end
    end
    s
end