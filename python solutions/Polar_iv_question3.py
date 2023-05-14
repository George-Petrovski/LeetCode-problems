#!/bin/python3

import math
import os
import random
import re
import sys



#
# Complete the 'getTheGroups' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER n
#  2. STRING_ARRAY queryType
#  3. INTEGER_ARRAY students1
#  4. INTEGER_ARRAY students2
#



def getTheGroups(n, queryType, students1, students2):
    # Write your code here
    parent = [0] * n
    count = [0] * n
    result = [0] * n

    for i in range(1, n+1):
        parent[i] = i
        count[i] = 1
    
    def findRoot(a):
        if a == parent[a]:
            return a
        parent[a] = findRoot(parent[a])
        return parent[a]
    
    def union(a, b):
        a = findRoot(a)
        b = findRoot(b) 
        if a == b: return
        if count[a] > count[b]:
            a, b = b, a
        parent[a] = b
        count[b] += count[a]
    
    current = 0
    
    for i in range(n-1):
        if queryType[i] == "Friend":
            union(students1[i], students2[i])
        else:
            x = findRoot(students1[i])
            y = findRoot(students2[i])
            
            if x == y:
                result[current] = count[x]
            else:
                result[current] = count[x] + count[y]
            current += 1
    return result 

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    queryType_count = int(input().strip())

    queryType = []

    for _ in range(queryType_count):
        queryType_item = input()
        queryType.append(queryType_item)

    students1_count = int(input().strip())

    students1 = []

    for _ in range(students1_count):
        students1_item = int(input().strip())
        students1.append(students1_item)

    students2_count = int(input().strip())

    students2 = []

    for _ in range(students2_count):
        students2_item = int(input().strip())
        students2.append(students2_item)

    result = getTheGroups(n, queryType, students1, students2)

    fptr.write('\n'.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
