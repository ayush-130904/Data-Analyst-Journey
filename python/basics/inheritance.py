#define a employee class with attribute role, deaprtment and salary. this class has showDEtails() method
#create an ENgieer class that inherits properties from Employee and has the attributes name and age

class Employee():
    def __init__(self, role, dept, salary):
        self.role = role
        self.dept = dept
        self.salary = salary

    def showDetails(self):
        print("role =", self.role)
        print("dept =", self.dept)
        print("salary =", self.salary)

class Engineer(Employee):                   #single inheritance
       def __init__(self, name, age):
        self.name = name
        self.age = age
        super().__init__("Engineer", "IT", "60,000")

eng1 = Engineer("Ayush", 20) 
print("Name =", eng1.name)
print("Age =", eng1.age) 
eng1.showDetails()     

