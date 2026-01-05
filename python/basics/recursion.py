 #Wap to print n to1 backswards
'''
def show(n):
    if(n == 0):
        return
    print(n)
    show(n - 1)

show(5)
'''   

#wap to find factorial
'''
def fact(n):
    if(n == 0 or n == 1):
        return 1
    else:
        return n * fact(n-1)    

ans = fact(5) 
print(ans)       
''' 

#wap to calculate the sum of first n natural numbers
'''
def calc_sum(n):
    if(n == 0):
        return 0
    return calc_sum(n - 1) + n
    
sum = calc_sum(5)        
print(sum)
'''

#wap to print all elements in the list 

def print_list(list, idx=0):
    if(idx == len(list)):
        return 
    print(list[idx])
    print_list(list, idx+1)

cities = ["kalyan", "dombivili", "thane", "mumbai"]

print_list(cities)
