# @param {Integer[][]} is_connected
# @return {Integer}
def find_circle_num(is_connected)
    @icn = is_connected
    @n = is_connected.size
    @nc = 0
    @v = Array.new(@n, false)
    (0...@n).each do |i|
        next if @v[i]
        @nc += 1
        bfs(i)
    end
    return @nc
end

def bfs(i)
    @v[i] = true
    q = []
    q.push(i)
    while !q.empty?
        node = q.shift()
        (0...@n).each do |j|
            next if @v[j]
            next if 0 == @icn[node][j]
            q.push(j)
            @v[j] = true
        end
    end
end