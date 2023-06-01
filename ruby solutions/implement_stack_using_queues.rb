class MyStack
    attr_accessor :queue
    def initialize()
        @queue = []
    end

=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        queue << x
        (queue.length - 1).times { queue << queue.shift }
    end

=begin
    :rtype: Integer
=end
    def pop()
        queue.shift
    end

=begin
    :rtype: Integer
=end
    def top()
        queue[0]
    end

=begin
    :rtype: Boolean
=end
    def empty()
        queue.empty?
    end
end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()