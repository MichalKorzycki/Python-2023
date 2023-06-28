import sys

from abc import ABC, abstractmethod


class Instrument(ABC):
    @abstractmethod
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


class Guitar(Instrument):
    def __init__(self, player):
        super().__init__(player)

    def mysound(self):
        return "Dling Dling"


if __name__ == '__main__':
    rockband = [globals()[s.split(':')[0]](s.split(':')[1]) for s in sys.argv[1:]]
    for instrument in rockband:
        instrument.play()
