# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    rows = []
    (0...num_rows).each { |i|
        rows[i] = []
        (0..i).each { |j|
        rows[i][j] = (j == 0 || j == i ? 1 : rows[i-1][j-1] + rows[i-1][j])
        }
    }
    rows
end