# @param {Integer[][]} intervals
# @return {Integer}
def erase_overlap_intervals(intervals)
    intervals.sort_by! { |x| x[1] }
    n = intervals.length

    prev = 0
    count = 1
    for i in 1...n do
        if intervals[i][0] >= intervals[prev][1]
            prev = i
            count += 1
        end
    end

    return n - count
end

# @param {Integer[][]} intervals
# @return {Integer}
def better_erase_overlap_intervals(intervals)
    intervals.sort_by!(&:last)

    bound = -Float::INFINITY
    count = 0
    intervals.each do |s, e|
        if bound <= s
            bound = e
            count += 1
        end
    end

    return intervals.length - count
end