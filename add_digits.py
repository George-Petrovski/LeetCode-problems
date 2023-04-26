class Solution:
    def addDigits(self, num: int) -> int:
        # while (num > 9):
        #     sep_num = [int(d) for d in str(num)]
        #     num = 0
        #     for i in range(len(sep_num)):
        #         num += sep_num[i]
        # return num
        while num > 9:
            sum = 0
            while num:
                sum += num%10
                num = num//10
            num = sum
        return num