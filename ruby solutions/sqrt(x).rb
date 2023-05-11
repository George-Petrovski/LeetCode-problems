# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    return 0 if x == 0
    first, last = 1, x
    while first <= last
        mid = first + (last - first) / 2
        print(" first: ", first, " mid: ", mid, "last: ", last)
        if mid == x / mid
            return mid
        elsif mid > x / mid
            last = mid - 1
        else
            first = mid + 1
        end
    end
    return last
end