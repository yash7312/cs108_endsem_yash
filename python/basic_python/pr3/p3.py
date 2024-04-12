import sys

file_name = sys.argv[1]
a = []
b = []
c = []
d = []

with open(file_name, 'r') as file:
    for i in file:
        a.append(i)
        b.append(i.split(' ')[0].split('_')[2])
        c.append(int(i.split(' ')[1]))
        
for i in range(len(a)):
    pass
