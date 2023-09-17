# @param {Integer[][]} graph
# @return {Integer}
def shortest_path_length(graph)
    n = graph.length
    queue = (0...n).map { |i| [1 << i, i, 0] }
    visited = Set.new(queue.map { |mask, node, _dist| [mask, node] })

    until queue.empty?
      mask, node, dist = queue.shift
      return dist if mask == (1 << n) - 1

      graph[node].each do |neighbor|
        new_mask = mask | (1 << neighbor)
        unless visited.include?([new_mask, neighbor])
          visited.add([new_mask, neighbor])
          queue.push([new_mask, neighbor, dist + 1])
        end
      end
    end
end