class GraphNode

    def initialize(value)
        @value = value
        @neighbors = []
    end

    attr_accessor :value, :neighbors

end

def bfs(starting_node, target_value)
    queue = [starting_node]  
    visited = Set.new
    return nil if visited.include?(starting_node.to_s)

    until queue.empty?
        el = queue.shift
        if !visited.include?(queue[0])
            if el.value != target_value 
                visited << el
                el.neighbors.each do |mrrogers|
                    queue << mrrogers
                end 
            else
                return queue[0]
            end
        end
    end
    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]