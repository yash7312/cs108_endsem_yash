with open('spice_locations.txt','r') as file:
    a=0
    for i in file.readlines():
        a+= 1
    print(a)