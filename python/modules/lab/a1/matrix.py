import numpy as np

x = np.array([[5,5,84,3,9],[6,11,1,55,58],[1,20,48,12,36],[8,4,41,93,98],[6,17,64,0,13]])
y = np.triu(x,k=0)
y = y.T
# print(y)
print(np.mean(x, axis=0))
print(np.median(x, axis=0))
print(np.std(x, axis=0))
print(np.linalg.det(x))
print(np.linalg.inv(x))
print(np.linalg.pinv(x))
print(np.pad(x,((3,2),(1,5)),'constant', constant_values=((2,3),(4,5))))
