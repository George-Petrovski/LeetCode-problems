class TwoSum
    def initialize()
        @@nums = {}
    end


=begin
    :type number: Integer
    :rtype: Void
=end
    def add(number)
        if @@nums.include? number
            @@nums[number] += 1
        else
            @@nums[number] = 1
        end
    end


=begin
    :type value: Integer
    :rtype: Boolean
=end
    def find(value)
        @@nums.each do |k, v|
            if @@nums.key? value-k
                next if k == value-k and @@nums[k] == 1
                return true
            end
        end
        return false
    end


end

# Your TwoSum object will be instantiated and called as such:
# obj = TwoSum.new()
# obj.add(number)
# param_2 = obj.find(value)