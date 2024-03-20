class Solution:
    def countTime(self, time: str) -> int:
        hr_choice = 1
        if time[0] == "?":
            if time[1] == "?":
                hr_choice = 24
            elif int(time[1]) > 3:
                hr_choice = 2
            else:
                hr_choice = 3
        elif time[1] == "?" and int(time[0]) < 2:
            hr_choice = 10
        elif time[1] == "?" and int(time[0]) == 2:
            hr_choice = 4

        min_choice = 1
        if time[3] == "?":
            if time[4] == "?":
                min_choice = 60
            else:
                min_choice = 6
        elif time[4] == "?":
            min_choice = 10

        return hr_choice * min_choice