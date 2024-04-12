n = int(input())

a = []
b = []
print(len(a))

while(True):
    temp = 2
    found = 0
    if(temp not in a):
        for j in a:
            if(temp%j == 0):
                found = 1
        if(found == 0):
            a.append(temp)
    print(temp)
    temp = temp + 1
    if(len(a) == n):
        break
    
for i in range(n):
    print(a[i])
        