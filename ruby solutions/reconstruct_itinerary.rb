# @param {String[][]} tickets
# @return {String[]}
def find_itinerary(tickets)
    @graph = Hash.new { |hash, key| hash[key] = [] }

    tickets.sort.reverse_each do |src, dst|
      @graph[src] << dst
    end

    @itinerary = []

    def dfs(airport)
      while !@graph[airport].empty?
        dfs(@graph[airport].pop)
      end
      @itinerary << airport
    end

    dfs("JFK")

    return @itinerary.reverse
end