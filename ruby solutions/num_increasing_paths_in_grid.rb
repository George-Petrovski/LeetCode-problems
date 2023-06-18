# @param {Integer[][]} grid
# @return {Integer}
def count_paths(grid)
    noOfRows, noOfCols, res = grid.length, grid[0].length, 0
    dp = Array.new(noOfRows) { Array.new(noOfCols, -1) }

    noOfRows.times do |row|
        noOfCols.times do |col|
            res += dfs(row, col, -1, dp, grid)
        end
    end
    res % (10 ** 9 + 7)
end

def dfs (row, col, prev, dp, grid)
    directions = [[0, 1], [0, -1], [1, 0], [-1, 0]]
    return 0 if row < 0 or col < 0 or row >= grid.length or col >= grid[0].length or grid[row][col] <= prev        
    return dp[row][col] if dp[row][col] != -1        
    ans = 1
    directions.each { |direction|
        newRow, newCol = row + direction[0], col + direction[1]
        ans += dfs(newRow, newCol, grid[row][col], dp, grid)
    }
    dp[row][col] = ans
    ans
end