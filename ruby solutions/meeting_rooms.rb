# @param {Integer[][]} intervals
# @return {Boolean}
def can_attend_meetings(intervals)
    intervals.sort!
    for i in (0...intervals.length-1) do
        return false if intervals[i][1] > intervals[i+1][0]
    end
    true
end