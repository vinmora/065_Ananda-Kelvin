import os
os.system("cls")

n = int(input("N = "))
print()

for i in range (n,0,-1):
    x = i * (i+1) / 2
    for j in range (1,i+1,1):
        print(j ,end=" ")
    print("= ", int(x))
