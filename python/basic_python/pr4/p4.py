st = input()

a=[]
a=input().split(' ')
b=[]
for i in range(len(a)):
    b.append(int(a[i]))
    
for j in b: 
    print(st[j], end="")
print()