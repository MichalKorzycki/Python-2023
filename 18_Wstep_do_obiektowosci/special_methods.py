# object.__lt__(self, other)
#
# object.__le__(self, other)
#
# object.__eq__(self, other)
#
# object.__ne__(self, other)
#
# object.__gt__(self, other)
#
# object.__ge__(self, other)
#

# object.__len__
#
# object.__iter__
#
# object.__getslice__(self,i,j)
#
# object.__add__
#
# object.__sub__
#
# object.__mul__

class IntValue:
    def __init__(self, value):
        self.value = value

    # repr() : evaluatable string representation of an object (can "eval()" it, meaning it is a string representation that evaluates to a Python object)
    def __repr__(self):
        return f"IntValue({self.value})"

    def __gt__(self, other):
        return self.value > other.value


a = IntValue(3)
b = IntValue(5)

b > a # b.__gt__(a)

b


class IntValue:
    def __init__(self, value):
        self.value = value

    def __repr__(self):
        return "IntValue(%d)" % (self.value)

    def __gt__(self, other):
        return self.value > other.value

    def __add__(self, other):
        return IntValue(self.value + other.value)


a = IntValue(3)
b = IntValue(5)

a + b

a = IntValue(3)
b = 5

a + b # error


class IntValue:
    def __init__(self, value):
        self.value = value

    def __repr__(self):
        return "IntValue(%d)" % (self.value)

    def __gt__(self, other):
        return self.value > other.value

    def __add__(self, other):
        if type(other) == type(self):
            value = other.value
        else:
            value = other
        return IntValue(self.value + value)


a = IntValue(3)
b = 5

a + b # ok

b + a # error


class IntValue:
    def __init__(self, value):
        self.value = value

    def __repr__(self):
        return "IntValue(%d)" % (self.value)

    def __gt__(self, other):
        return self.value > other.value

    def __add__(self, other):
        if type(other) == type(self):
            value = other.value
        else:
            value = other
        return IntValue(self.value + value)

    def __radd__(self, value):
        return IntValue(self.value + value)
#############################################################


a = 3
b = IntValue(5)

a + b

import math
class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def length(self):
        return math.sqrt(self.x * self.x + self.y * self.y)

    def __len__(self):
        return int(self.length())

    @property
    def r(self):
        return self.length()

    # repr() : evaluatable string representation of an object (can "eval()" it, meaning it is a string representation that evaluates to a Python object)
    # https://docs.python.org/3.11/library/reprlib.html#
    def __repr__(self):
        return "Point(%s, %s)" % (self.x, self.y)

p = Point(3,4)
len(p)
p

#############################################################

values = ('9', '10', 'J', 'Q', 'K', 'A')
suits = ('clubs', 'diamonds', 'hearts', 'spades')


class Card(object):
    def __init__(self, value, suit):
        self.value, self.suit = value, suit

    def __repr__(self):
        return "Card('%s','%s')" % (self.value, self.suit)

    def __eq__(self, card):
        return self.value == card.value and self.suit == card.suit
