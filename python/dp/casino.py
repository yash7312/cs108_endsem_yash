import sys
import numpy as np

if(len(sys.argv) != 2):
    print("invalid number of arguments")
#using only recursion, got 4 values
def casino(x):
        if(x == 1):
            return 1
        elif(x<=0):
            return 0
        elif(x<=6):
            return (casino(x-1) + casino(x-2) + casino(x-3) + casino(x-4) + casino(x-5) + casino(x-6) + 1)
        else:
            return (casino(x-1) + casino(x-2) + casino(x-3) + casino(x-4) + casino(x-5) + casino(x-6))
#storing values in array from lowesst to highest, got 7 values
def arr_casino(x):
        if(x<=0):
            return 0
        elif(x>6):
            return (ans[x-1] + ans[x-2] + ans[x-3] + ans[x-4] + ans[x-5] + ans[x-6]) % 1000000007
        elif(x==6):
            return (ans[x-1] + ans[x-2] + ans[x-3] + ans[x-4] + ans[x-5] + 1)
        elif(x==5):
            return (ans[x-1] + ans[x-2] + ans[x-3] + ans[x-4] + 1)
        elif(x==4):
            return (ans[x-1] + ans[x-2] + ans[x-3] + 1)
        elif(x==3):
            return (ans[x-1] + ans[x-2] + 1)
        elif(x==2):
            return (ans[x-1] + 1)
        elif(x==1):
            return (1)
def dpcasino(x):
    for i in range(x+1):
        ans.append(arr_casino(i))
        # global ans
        # ans = np.append(ans, [arr_casino(i)], axis = 0)


file_name = sys.argv[1]
try:
    
    with open(file_name, 'r') as file:
        for line in file:
            # 3 values output
            # print(casino(int(line)))
            
            # got 7 values output
            # ans = np.array([])
            ans = []
            dpcasino(int(line))
            print(ans[-1] % 1000000007)
            
            #try for 10
            
            pass
        
except FileNotFoundError:
    print(f"Error: the file '{file_name}' does not exist T-T ")