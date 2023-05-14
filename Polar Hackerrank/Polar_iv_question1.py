#!/bin/python3

import math
import os
import random
import re
import sys


#
# Complete the 'minChairs' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts STRING_ARRAY simulations as parameter.
#

def minChairs(simulations):
    # Write your code here
    res = []
    for i in simulations:
        total = 0
        available = 0
        for j in i:
            if j == "C" and available == 0:
                total += 1
            elif j == "C" and available > 0:
                available -= 1
            elif j == "R":
                available += 1
            elif j == "U" and available == 0:
                total += 1
            elif j == "U" and available > 0:
                available -= 1
            elif j == "L":
                available += 1
        res.append(total)
    return res

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    simulations_count = int(input().strip())

    simulations = []

    for _ in range(simulations_count):
        simulations_item = input()
        simulations.append(simulations_item)

    result = minChairs(simulations)

    fptr.write('\n'.join(map(str, result)))
    fptr.write('\n')

    fptr.close()