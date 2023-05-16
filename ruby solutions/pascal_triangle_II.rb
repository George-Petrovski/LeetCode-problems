# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    pascal = [[1],[1,1]]
    (2..row_index).each {
        |i| 
        row = [1]
        (0...i-1).each {
            |j|
            row << (pascal[i-1][j]+pascal[i-1][j+1])
        }
        row << 1
        pascal << row
    }
    return pascal[row_index]
end