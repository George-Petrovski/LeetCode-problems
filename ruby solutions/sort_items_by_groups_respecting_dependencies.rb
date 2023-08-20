# @param {Integer} n
# @param {Integer} m
# @param {Integer[]} group
# @param {Integer[][]} before_items
# @return {Integer[]}
def sort_items(n, m, group, before_items)
    for i in 0..n-1
      if group[i] == -1
        group[i] = i + m # re-group
      end
    end

    graph0 = {} # digraph of groups
    indeg0 = Array.new(n + n, 0) # indegree of groups

    graph1 = {} # digraph of groups
    indeg1 = Array.new(n, 0) # indegree of groups

    before_items.each_with_index do |x, i|
      x.each do |xx|
        if group[xx] != group[i]
          graph0[group[xx]] ||= []
          graph0[group[xx]] << group[i]
          indeg0[group[i]] += 1
        end
        graph1[xx] ||= []
        graph1[xx] << i
        indeg1[i] += 1
      end
    end

    def fn(graph, indeg)
      ans = []
      stack = indeg.each_index.select { |k| indeg[k] == 0 }
      until stack.empty?
        n = stack.pop
        ans << n
        graph[n]&.each do |nn|
          indeg[nn] -= 1
          stack << nn if indeg[nn] == 0
        end
      end
      ans
    end

    tp0 = fn(graph0, indeg0)
    return [] if tp0.length != indeg0.length

    tp1 = fn(graph1, indeg1)
    return [] if tp1.length != indeg1.length

    mp0 = tp0.each_with_index.to_h
    mp1 = tp1.each_with_index.to_h

    (0..n-1).sort_by { |x| [mp0[group[x]], mp1[x]] }
end