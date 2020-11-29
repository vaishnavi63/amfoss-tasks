i = 0
n=int(input())
while i<n:
    k=int(input())
    a=input().split()
    l=len(a)
    if k<l:
        c=a[k]
        print(sum(map(ord,c)))
        i=i+1
    else:
        print(-1)
        i=i+1