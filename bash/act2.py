import math

class Complex:

    def __init__(self, a, b):
        self.x = a
        self.y = b

    def __str__(self):
        return f"{self.x} + i{self.y}"

    def __add__(self, a):
        return Complex(self.x + a.x, self.y + a.y)

    def __sub__(self, a):
        return Complex(self.x - a.x, self.y - a.y)

class Polar:

    def __init__(self, a, b):
        self.r = a
        self.t = b

    def __str__(self):
        return f"({self.r},{self.t})"

    def __mul__(self, a):
        return Polar(round(self.r * a.r,2), round(self.t + a.t,2))

    def __pow__(self, a):
        return Polar(round(self.r ** a,2), round(self.t * a,2))

if __name__ == '__main__':

    # you can use this area of code to check all the functions manually
    # one example of using the functions has been shown
    # run this using "python3 main.py"
    a = Complex(1,2)
    b = Complex(2,2)
    z = a + b # uses the overloaded add
    print(z)
    # print(modulus(z)) # you can call after you implement
    x = Polar(2,math.pi/3) # uses the overloaded power
    print(x ** 2)