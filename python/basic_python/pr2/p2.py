import sys

file_name = sys.argv[1]
b=[]
with open(file_name, 'r') as file:
    for i in file:
        a = i.split(',')
        for j in a:
            if(int(j) not in b):
                b.append(int(j))
            
    print(len(b))