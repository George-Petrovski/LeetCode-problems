class NumArray

    =begin
        :type nums: Integer[]
    =end
      def initialize(nums)
        @sum = []
        sum_till = 0
        nums.each do |num|
          sum_till += num
          @sum << sum_till
        end
      end
    
    =begin
        :type left: Integer
        :type right: Integer
        :rtype: Integer
    =end
      def sum_range(left, right)
        if left > 0 && right > 0
          @sum[right] - @sum[left - 1]
        else
          @sum[left > 0 ? left : right]
        end
      end
    end
    
    # Your NumArray object will be instantiated and called as such:
    # obj = NumArray.new(nums)
    # param_1 = obj.sum_range(left, right)