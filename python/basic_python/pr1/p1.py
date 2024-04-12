import sys

input = "input.txt"

with open(input, 'r') as file:
    n = file.readline()
    print(n)
    
    for i in file:
        print(i)
        print(type(i))
        temp = int(i)
        



