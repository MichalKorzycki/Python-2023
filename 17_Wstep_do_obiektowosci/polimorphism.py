class Instrument:
    name = "Instrument"

    def mysound(self):
        return "!&$%$^%*"

    def play(self):
        print("%s: %s" % (self.name, self.mysound()))


# Dziedziczenie
class Drums(Instrument):
    name = "Drums"

    def mysound(self):
        return "Booom Booooom"


drum = Drums()
drum.play()

drum.__class__

drum.__class__.__name__


class Instrument:
    def mysound(self):
        return "!&$%$^%*"

    def play(self):
        print(f"{self.player}@{self.__class__.__name__}: {self.mysound()}")

    def __init__(self, player):
        self.player = player


class Drums(Instrument):
    def __init__(self, player):
        super().__init__(player)

    def mysound(self):
        return "Booom Booooom"


drum = Drums('Bob')
drum.play()


class Guitar(Instrument):
    def mysound(self):
        return "Dling Dling"


guitar = Guitar('Bill')
guitar.play()

# Polimorfizm

rockband = [Guitar('Bill'), Guitar('Dan'), Guitar('Jack'), Drums('Bob')]

for instrument in rockband:
    instrument.play()

# Klasy abstrakcyjne

instrument = Instrument('Bob')
instrument.play()


from abc import ABC, abstractmethod


class Instrument(ABC):
    @abstractmethod
    def mysound(self):
        return "!&$%$^%*"

    def play(self):
        print("%s@%s: %s" % (self.__class__.__name__, self.player, self.mysound()))

    def __init__(self, player):
        self.player = player


class Drums(Instrument):
    def __init__(self, player):
        super().__init__(player)

    def mysound(self):
        return "Booom Booooom"


class Guitar(Instrument):
    def mysound(self):
        return "Dling Dling"


instrument = Instrument('Bob')  # error
