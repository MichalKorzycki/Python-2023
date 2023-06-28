###################
# Monkey patching #
###################

class A():
    def f(self):
        return 1


a = A()
a.f()


def f(x):
    return -1


A.f = f

a.f()


###################################################

###############
# Duck Typing #
###############


class Drums:
    def play(self):
        return "Booom Booooom"


class Guitar:
    def play(self):
        return "Dling Dling"


orchestra = [Guitar(), Guitar(), Drums()]
for instrument in orchestra:
    print(instrument.play())


###################################################

################################
# We don't need no stinkin' IF #
################################

# Źle !
class Swallow():
    def __init__(self, s_type):
        self.type = s_type
        self.base_speed = 120
        self.load_factor = 15
        self.number_of_coconuts = 3

    def get_speed(self):
        if self.type == 'European':
            return self.base_speed
        elif self.type == 'African':
            return self.base_speed - self.load_factor * self.number_of_coconuts;
        elif self.type == 'Norwegian':
            return self.base_speed - self.load_factor * self.number_of_coconuts * self.number_of_coconuts;
        else:
            return 0


swallow = Swallow('African')
swallow.get_speed()

# DOBRZE !

from abc import ABC, abstractmethod


class Swallow(ABC):
    def __init__(self):
        self.base_speed = 120
        self.load_factor = 15
        self.number_of_coconuts = 3

    @abstractmethod
    def get_speed(self):
        pass


class EuropeanSwallow(Swallow):
    def get_speed(self):
        return self.base_speed


class AfricanSwallow(Swallow):
    def get_speed(self):
        return self.base_speed - self.load_factor * self.number_of_coconuts;


class NorwegianSwallow(Swallow):
    def get_speed(self):
        return self.base_speed - self.load_factor * self.number_of_coconuts * self.number_of_coconuts;


swallow = AfricanSwallow()
swallow.get_speed()


# NAJGORZEJ !!!
class Swallow():
    def __init__(self):
        self.base_speed = 120
        self.load_factor = 15
        self.number_of_coconuts = 3

    def get_speed(self):
        if self.__class__.__name__ == 'EuropeanSwallow':
            return self.base_speed
        elif self.__class__.__name__ == 'AfricanSwallow':
            return self.base_speed - self.load_factor * self.number_of_coconuts;
        elif self.__class__.__name__ == 'NorwegianSwallow':
            return self.base_speed - self.load_factor * self.number_of_coconuts * self.number_of_coconuts;
        else:
            return 0


class EuropeanSwallow(Swallow):
    pass


class AfricanSwallow(Swallow):
    pass


class NorwegianSwallow(Swallow):
    pass


swallow = AfricanSwallow()
swallow.get_speed()
