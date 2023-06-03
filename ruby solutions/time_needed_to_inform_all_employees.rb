# @param {Integer} n
# @param {Integer} head_id
# @param {Integer[]} manager
# @param {Integer[]} inform_time
# @return {Integer}

def num_of_minutes(n, head_id, manager, inform_time)
    @res = 0
    (0...n).each{|i| process(i, head_id, manager, inform_time) if inform_time[i] == 0}
    @res
end

def process(curr, head, manager, inform_time)
    sum = 0
    while curr!=head
        curr = manager[curr]
        sum+=inform_time[curr]
    end
    @res = [@res, sum].max
end