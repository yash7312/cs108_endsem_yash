import sys

def func1(x):
    temp1 = x.split('_')
    temp2 = x.split(' ')
    return temp1[2]*100 + temp2[1]

n = sys.argv[1]
a = []

with open(n, 'r') as file:
    
    for temp in file:
        a.append(temp)
    a.sort(key=func1)
    print(a)

    