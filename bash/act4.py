import sys
import math

n = int(sys.argv[1])
prime = list()
for i in range(2,n+1):
    prime.append(i)

for i in prime:
    found = 0
    for j in range(2,int(math.sqrt(i))+1):
        if(i%j == 0):
            found = 1
    if(found == 0):
        for x in range(2,int(n/i)+1):
            try:
                index = prime.index(x * i)
                # Remove the element at that index
                prime.pop(index)
            except ValueError:
                continue

print(prime)
    