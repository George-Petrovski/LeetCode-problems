# @param {String} s
# @return {String}
def remove_duplicate_letters(s)
    stack = []
    seen = Set.new
    last_occ = Hash.new { |h, k| h[k] = -1 }

    s.each_char.with_index do |c, i|
      last_occ[c] = i
    end

    s.each_char.with_index do |c, i|
      unless seen.include?(c)
        while !stack.empty? && c < stack.last && i < last_occ[stack.last]
          seen.delete(stack.pop)
        end
        seen.add(c)
        stack.push(c)
      end
    end
    
    stack.join
end