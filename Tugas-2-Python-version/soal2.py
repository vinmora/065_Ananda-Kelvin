import os
os.system("cls")

n = int(input("Input N : "))
print()

for i in range(1,n+1):
    for j in range (1,i+1):
        if i % 2 == 1:
            print("*",end=" ")
        else:
            print(i,end=" ")
    print()