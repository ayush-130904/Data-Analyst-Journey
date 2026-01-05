marks = int(input("enter your marks "))

if(marks >= 90):
    grade = "A"

elif(marks >=80 and marks <90):
    grade ="B"

elif(marks >=70 and marks <80):
    grade ="C"

else:
    grade="D"

print("Your grade is :",grade)                