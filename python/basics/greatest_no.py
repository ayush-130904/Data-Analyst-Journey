a = int(input("Enter first no :"))
b = int(input("Enter second no :"))
c = int(input("Enter third no :"))

if(a>b and a>c):
    ans=a
elif(b>c):
    ans=b
else:
    ans=c

print("the greastest no is :",ans)
    