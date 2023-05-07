# @param {Integer[]} obstacles
# @return {Integer[]}
def longest_obstacle_course_at_each_position(obstacles)
    obstacle_path = []
    obstacle_count = []
    for i in 0..obstacles.length - 1
        if obstacle_path.empty? || (obstacles[i] >= obstacle_path.last)
            obstacle_path << obstacles[i] 
            obstacle_count[i] = obstacle_path.count
        else
            idx = obstacle_path.bsearch_index {|obstacle| obstacle > obstacles[i] }
            obstacle_path[idx] = obstacles[i]
            obstacle_count[i] = idx + 1
        end
    end
    obstacle_count
end