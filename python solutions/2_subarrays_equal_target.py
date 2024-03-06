def solution(first, second, target):
    # Function to count pairs of sub-arrays with sum equal to target
    count = 0
    if len(first) >= len(second):
        b = first
        s = second
    else:
        b = second
        s = first
    
    lesser1 = []
    match = []
    for i in range(len(b)):
        sub = []
        sub.append(b[i])
        if b[i] < target:
            lesser1.append([b[i]])
        for j in range(i+1, len(b)):
            if sum(sub) + b[j] >= target:
                break
            sub.append(b[j])
            lesser1.append(sub.copy())
                
    lesser2 = []
    for i in range(len(s)):
        sub = []
        sub.append(s[i])
        if s[i] < target:
            lesser2.append([s[i]])
        for j in range(i+1, len(s)):
            if sum(sub) + s[j] >= target:
                break
            sub.append(s[j])
            lesser2.append(sub.copy())
                
    for i in range(len(lesser1)):
        for j in range(len(lesser2)):
            sub = lesser1[i] + lesser2[j]
            if sum(sub) == target:
                match.append(sub)
    print(match)
    return len(match)

# Test the function
firstArray = [5, 2, 1, 6, 4]
secondArray = [3, 5]
target = 10
print(solution(firstArray, secondArray, target))  # Output should be 4