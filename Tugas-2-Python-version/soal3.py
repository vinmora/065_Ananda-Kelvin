import os
os.system("cls")


n = int(input("Input titik tengah (N) : "))
print()

for i in range (n,0,-1):
    for j in range (i,1,-1):
        print("  ",end ="")
    for k in range (i-1,n):
        print("*", end =" ")
    for l in range (n,i,-1):
        print("*", end =" ")
    print()
for a in range (0,n-1,1):
    for b in range (0,a+1,1):
        print("  ", end= "")
    for c in range (n-1,a+1,-1):
        print("*", end =" ")
    for d in range (n,a+1,-1):
        print("*", end=" ")
    print()
    