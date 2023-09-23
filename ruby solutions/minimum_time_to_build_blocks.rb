# @param {Integer[]} blocks
# @param {Integer} split
# @return {Integer}
def min_build_time(blocks, split)
    while blocks.length > 1
      min1 = blocks.min
      index1 = blocks.index(min1)
      blocks.delete_at(index1)
      
      min2 = blocks.min
      index2 = blocks.index(min2)
      blocks.delete_at(index2)
      
      new_block = [min1, min2].max + split
      blocks.push(new_block)
    end
    blocks[0]
end