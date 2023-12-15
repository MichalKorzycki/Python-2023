class Employee:
    pass


john = Employee()

john.name = 'John Doe'
john.dept = 'computer lab'
john.salary = 1000

john.salary


class Employee:
    def __init__(self, name, dept, salary):
        self.__name = name
        self.__dept = dept
        self.__salary = salary

    def get_salary(self):
        return self.__salary


john = Employee('John Doe', 'computer lab', 1000)
john.get_salary()


john.__salary  # error



john._Employee__salary

import math


class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    @property
    def r(self):
        return math.sqrt(self.x * self.x + self.y * self.y)


p = Point(3.0, 4.0)

print(p.r)
p.r = 7  # error
p.r()  # error

# Anatomia obiektu
print(p.__dict__)
print(Point.__dict__)
