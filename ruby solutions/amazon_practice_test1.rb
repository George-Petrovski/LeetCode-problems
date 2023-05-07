def minimalHeaviestSetA(arr)
    # Write your code here
    arr.sort!.reverse!
    sum = arr.sum
    target = (sum / 2)
    subsetarr = []
    i = 0
    while (subsetarr.sum < target)
        subsetarr << arr[i]
        i += 1
    end
    if subsetarr.sum == target
        subsetarr << arr[i + 1]
    end
    return subsetarr.sort!
end