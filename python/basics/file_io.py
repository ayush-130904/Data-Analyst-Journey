#open a file
'''f = open("demo.txt", "r")
data = f.read()
print(data)
print(type(data))
f.close()'''

#readline
'''f = open("demo.txt", "r")
line1 = f.readline()
print(line1)

line2 = f.readline()
print(line2)
f.close()'''

#writing
'''f = open("demo.txt", "w")  #overwrite
f.write("i am learning python")
f.close()

f = open("demo.txt", "a")  #add a line
f.write("\nHELLO WORLD")
f.close()'''

#with syntax
'''with open("demo.txt", "r+") as f:
    data = f.read()
    print(data)'''

#Deleting a file
'''import os
os.remove("demo.txt")'''


#Wap to open and add lines in file
'''with open("sample.txt", "w") as f:
    f.write("HI everyone\nWe are learning FIleI/O\nusing Java.")'''

#waP to replace java with python    
'''with open("sample.txt", "r") as f:
    data = f.read()  

new_data = data.replace("Java","Python")
print(new_data)   

with open("sample.txt", "w") as f:
    f.write(new_data)'''


#wap to search word learning

'''word = "learning"
with open("sample.txt", "r") as f:
    data = f.read()
    if(data.find(word) != -1):
        print("Found")
    else:
        print("Not found")   '''   


        #OR

'''def cheack_for_word():
    word = "learning"
    with open("sample.txt", "r") as f:
        data = f.read()
        if(word in data):
            print("Found")
        else:
            print("Not found") 

cheack_for_word()''' 


#WAp to check for line where learning word exists
'''def check_for_line():
    word = "learning"
    data = True
    line_no = 1
    with open("sample.txt", "r") as f:
        while data:
            data = f.readline()
            if(word in data):
                print(line_no)
                return
            line_no += 1
        else:
                print("-1"
            

check_for_line()''' 


#wap to find the count of even no from the given list
'''with open("new.txt", "w") as f:
    data = f.write("1, 20, 24, 51, 67, 92, 101")

count = 0
with open("new.txt", "r") as f:
    data = f.read()

    nums = data.split(",")
    for vals in nums:
        if(int(vals) % 2 == 0):
           count += 1

print(count)'''         





