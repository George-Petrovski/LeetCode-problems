# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
    return [] if matrix == nil

    rows, cols = matrix.length, matrix[0].length
    top, bottom, left, right = 0, rows-1, 0, cols-1
    result = []

    while result.length < rows * cols
        (left..right).each do |n|
            result << matrix[top][n]
        end
        top += 1
        (top..bottom).each do |n|
            result << matrix[n][right]
        end
        right -= 1
        if top <= bottom
            for n in right.downto(left) do
                result << matrix[bottom][n]
            end
        end
        bottom -= 1
        if left <= right
            for n in bottom.downto(top) do
                result << matrix[n][left]
            end
        end
        left += 1

    end

    return result
end