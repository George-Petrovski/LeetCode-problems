# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
    counts = (0..n).to_a
    counts.map! { |i| i%2 + counts[i>>1] }
  end