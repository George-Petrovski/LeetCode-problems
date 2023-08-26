# @param {Integer[][]} pairs
# @return {Integer}
def find_longest_chain(pairs)
    pairs.sort!
    count = 1
    last = pairs.shift[1]

    until pairs.empty?
        a,b = pairs.shift
        if a > last
            count += 1
            last = b
        else
            last = [last,b].min
        end
    end

    count
end