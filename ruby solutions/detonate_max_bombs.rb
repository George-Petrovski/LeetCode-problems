# @param {Integer[][]} bombs
# @return {Integer}
def maximum_detonation(bombs)
    chain = Hash.new { |h,k| h[k] = [] }

    bombs.each_with_index do |bomb,i|
        bombs.each_with_index do |bomb2,j|
            if i > j
                a,b,c = bomb
                d,e,f = bomb2

                chain[i] << j if (a-d)**2 + (b-e)**2 <= c**2
                chain[j] << i if (a-d)**2 + (b-e)**2 <= f**2
            end
        end
    end

    max = 0

    (0...bombs.length).each do |i|
        checked = Set[i]
        queue = checked.to_a

        until queue.empty?
            bomb = queue.shift
            connections = chain[bomb]
            connections.each do |connection|
                queue << connection unless checked.include?(connection)
                checked.add(connection)
            end
        end

        max = checked.size if checked.size > max
    end
    max
end