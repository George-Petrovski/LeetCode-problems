class MyQueue
    def initialize()
        @in, @out = [], []
    end
=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        @in << x
    end
=begin
    :rtype: Integer
=end
    def pop()
        peek
        @out.pop
    end
=begin
    :rtype: Integer
=end
    def peek()
        @out << @in.pop until @in.empty? if @out.empty?
        @out.last
    end
=begin
    :rtype: Boolean
=end
    def empty()
        @in.empty? && @out.empty?
    end
end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()