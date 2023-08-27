# @param {Integer[]} stones
# @return {Boolean}
def can_cross(stones)
    @stones = stones
    @memo = {}
    can_make_it_to_the_end?(0,0)
end

def can_make_it_to_the_end?(index, last_jump)
    return true if index + 1 == @stones.size

    next_index = index + 1

    while @stones[next_index] && @stones[next_index] - @stones[index] <= last_jump + 1
        (last_jump-1..last_jump+1).each { |jump|
            if @stones[next_index] - @stones[index] == jump && !@memo["#{next_index},#{jump}"]
                return true if can_make_it_to_the_end?(next_index, jump)
                
                @memo["#{next_index},#{jump}"] = true
            end
        }
        next_index += 1
    end
    false
end