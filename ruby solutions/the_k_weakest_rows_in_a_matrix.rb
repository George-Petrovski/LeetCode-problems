# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
    # create an array of arrays with row.sum and index for each row
    row_str = mat.each_with_index.map { |row, i| [row.sum, i] }
    # sort the array based on row.sum and index
    row_str.sort_by! { |row| [row[0], row[1]] }
    # extract the first k indices
    row_str.first(k).map { |row| row[1] }
end