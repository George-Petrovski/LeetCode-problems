# @param {Integer} column_number
# @return {String}
CAPITALS = ('A'..'Z').to_a.freeze
def convert_to_title(column_number)
    res = ''

    while column_number > 0
        res.prepend(CAPITALS[(column_number-1) % 26])
        column_number = (column_number - 1) / 26
    end
    
    res
end