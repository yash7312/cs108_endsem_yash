import sys
import os
list1=[]
folder = sys.argv[1]
for i in os.scandir(folder):
    with open(i,'r') as file:
        for j in file.readlines():
            j = j.split('-')
            # print(j)
            list1.append(j)
dict1={}
for x in list1:
    if x[0] in dict1.keys():
        for y in range(1,4):
            dict1[x[0]][y-1] += int(x[y])
            # print(x[y])
    else:
        dict1[x[0]] = [0,0,0]
        for y in range(1,4):
            dict1[x[0]][y-1] += int(x[y])
            # print(x[y])

print(dict1)
print(sorted(dict1.items(), key=lambda x: (-x[1][0],x[0])))