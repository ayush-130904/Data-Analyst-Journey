#operations on complex numbers
'''class Complex():

    def __init__(self, real, img):
        self.real = real
        self.img = img

    def showNumber(self):
        print(self.real, "i +", self.img, "j")

    def __add__(self, num2):
        newReal = self.real + num2.real
        newImg = self.img + num2.img 
        return Complex(newReal, newImg)   

num1 = Complex(1, 3)
num1.showNumber() 
print("+")
num2 = Complex(3, 6)
num2.showNumber()

print("---------")

num3 = num1 + num2
num3.showNumber()'''      


#create a class called order which stoes item and its price
#use dunder func __gt__() to convey thAT:
#ORDER1> ORDER2 IF PRICE OD ORFER1>PRICE OF ORDER2

class Order():

    def __init__(self, item, price):
        self.item = item
        self.price = price

    def __gt__(self, odr2):
        return self.price > odr2.price

odr1 = Order("chips", 20)
odr2 = Order("tea", 15)

print(odr1 > odr2)



