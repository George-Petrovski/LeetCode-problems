# @param {Integer} poured
# @param {Integer} query_row
# @param {Integer} query_glass
# @return {Float}
def champagne_tower(poured, query_row, query_glass)
    tower = Array.new(query_row + 1) { |i| Array.new(i + 1, 0) }
    tower[0][0] = poured

    (0...query_row).each do |row|
      (0...tower[row].length).each do |glass|
        excess = (tower[row][glass] - 1) / 2.0
        if excess > 0
          tower[row + 1][glass] += excess
          tower[row + 1][glass + 1] += excess
        end
      end
    end
    [1.0, tower[query_row][query_glass]].min
end