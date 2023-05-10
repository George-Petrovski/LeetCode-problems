# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
    res = n.times.map{[0] * n}
    
    top, bot = 0, n - 1
    left, right = 0, n - 1

    count = 1

    while top <= bot && left <= right
        (left...right + 1).each do |r|
            res[top][r] = count
            count += 1
        end

        (top + 1...bot + 1).each do |l|
            res[l][right] = count
            count += 1
        end

        (right - 1).downto(left) do |r|
            res[bot][r] = count
            count += 1
        end

        (bot - 1).downto(top + 1) do |l|
            res[l][left] = count
            count += 1
        end

        top += 1
        bot -= 1
        left += 1
        right -= 1
    end

    return res
end