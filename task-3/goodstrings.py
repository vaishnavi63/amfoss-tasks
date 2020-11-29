n = int(input())
m = input()
count0 = 0
count1 = 0
for i in range(0,n):
    if (m[i] == '1'):
        count1 += 1
    elif(m[i] == '0'):
         count0 += 1
if count1 != count0:
    print(1)
else:
    print(2)