'''class Student:
    college_name = "SIGCE"   #class atrributes

    #deafult constructor

    def __init__(self):
        pass

    #parameterized constructor
    def __init__(self, name, marks):
        self.name = name
        self.marks = marks
        print("adding new students to database")

s1 = Student("ayush", 97)
print(s1.name, s1.marks)   
print(Student.college_name)   #class atribute syntax"class.atr"  

s2 = Student("anish", 99)
print(s2.name, s2.marks)
print(Student.college_name)


            #OR


class Student:
    college_name = "SIGCE"   #class atrributes

    #parameterized constructor
    def __init__(self, name, marks):
        self.name = name
        self.marks = marks
        print("adding new students to database")

    def hello(self):                 #Creating method1
        print("Welcome Students") 

    def get_marks(self):             #Creating method2
        print(self.marks)       

s1 = Student("ayush", 97)
s1.hello()                          #calling method1
print(s1.name)   
s1.get_marks()                          #calling method2
print(Student.college_name)   #class atribute syntax"class.atr"  

s2 = Student("anish", 99)
s1.hello()
print(s2.name)
s2.get_marks()
print(Student.college_name) '''



#wap to create student class that takes mname and marks of 3 subjects as arguments in constructor.then create methods to print average

'''class Student:
    def __init__(self, name, marks):
        self.name = name
        self.marks = marks

    def get_avg(self):
        sum = 0
        for val in self.marks:
            sum += val
        print("hii", self.name, "your avg score is : ", sum/3)   

s1 = Student("Ayush", [98, 97, 92])
s1.get_avg() '''


#wap to cheack balance from account and create methods to devit and credit amount

'''class Account:
    def __init__(self, bal, acc):
        self.balance = bal
        self.account_no = acc

    def get_balance(self):
        return self.balance    
    
    def debit(self, amount):
        self.balance -= amount
        print("Rs", amount, "was debited from your account", self.account_no)
        print("total balance is ", self.get_balance())

    
    def credit(self, amount):
        self.balance += amount
        print("Rs", amount, "was credited from your account", self.account_no)
        print("total balance is ", self.get_balance())


acc1 = Account(10000, 54321)        
acc1.debit(5000)
acc1.credit(2000)''' 











