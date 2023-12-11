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


class Guitar(Instrument):
    def __init__(self, player):
        super().__init__(player)

    def mysound(self):
        return "Pilim pilim"


class Saxophone(Instrument):
    def __init__(self, player):
        super().__init__(player)

    def mysound(self):
        return "Fiufiu"

instrument = globals()[input("Podaj instrument:")]('Bob')
instrument.play()