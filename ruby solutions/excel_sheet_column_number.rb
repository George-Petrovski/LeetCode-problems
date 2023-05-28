# @param {String} column_title
# @return {Integer}
def title_to_number(column_title)
    count = 0
    for i in 1..column_title.length do
        if i == 1
            count += (column_title[-i].ord - 64)
        else
            count += (column_title[-i].ord - 64) * 26 ** (i - 1)
        end
    end
    count
end