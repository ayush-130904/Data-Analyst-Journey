#average of 3 numbers
'''
def average(a,b,c):
    avg = (a+b+c)/3
    return avg

sol=average(2,3,4)
print(sol)    '''

#WAP ro print the length of a list
'''
cities = ["kalyan", "dombivili", "thane", "mumbai"]

def print_len(list):
    print(len(list))

print_len(cities)'''    

# wap to print elements of a list in a single line
'''
cities = ["kalyan", "dombivili", "thane", "mumbai"]

def print_len(list):
    print(len(list))

def print_list(list):
    for item in list:
        print(item, end=" ")

print_list(cities)'''

#wap to calculate factorial
'''
def calc_fact(n):
    fact = 1
    for i in range(1, n+1):
        fact *= i    
    print(fact)

calc_fact(6)'''  


#wap to convert USD to INR

'''def converter(usd_val):
    inr_val = usd_val * 83
    print(usd_val, "USD = ", inr_val, "INR")

converter(20)''' 

#Wap to print odd or even only if the no is odd or even
'''def check(num):
    if(num % 2 == 0):
        ans="Even"
    elif(num % 2==1):
        ans="Odd"
    else:
        ans="Neither even nor odd"
    print(ans)   

check(9)'''     


