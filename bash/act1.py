import sys
n = len(sys.argv)
if n != 2:
  print("INVALID INPUT")

filename = sys.argv[1]
if(filename == None):
    print("Filename not provided.")
else:
    with open(filename, 'r') as file:
        special = list()
        count = list()
        
        for temp in file:
            for i in temp:
                if(i not in special):
                    special.append(i)
                    count.append(1)
                else:
                    count[special.index(str(i))] +=1
        for i in range(len(special)):
            print(f"{special[i]}:{count[i]}")
        