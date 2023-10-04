class MyHashMap
    def initialize()
        @myhmap = {}
    end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
        @myhmap[key] = value
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
        @myhmap[key] || -1
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
        @myhmap.delete(key)
    end


end

# Your MyHashMap object will be instantiated and called as such:
# obj = MyHashMap.new()
# obj.put(key, value)
# param_2 = obj.get(key)
# obj.remove(key)