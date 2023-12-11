from weakref import WeakValueDictionary


class flyweight:
    def __init__(self, cls):
        self._cls = cls
        self._instances = WeakValueDictionary()

    def __call__(self, *args, **kargs):
        return self._instances.setdefault(
            (args, tuple(kargs.items())),
            self._cls(*args, **kargs))


@flyweight
class Card:
    values = ('2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A')
    suits = ('clubs', 'diamonds', 'hearts', 'spades')

    def __init__(self, value='A', suit='spade'):
        self.value, self.suit = value, suit
        print(f"In init; value is {value}; suit is {suit}")

    def __repr__(self):
        return "Card('%s','%s')" % (self.value, self.suit)

    def __eq__(self, card):
        return self.value == card.value and self.suit == card.suit

    def czy_bije(self, other):
        if self.suit == other.suit:
            if self.values.index(self.value) > self.values.index(other.value):
                return True
        return False

    def __gt__(self, n):
        return self.czy_bije(n)

    def __lt__(self, card):
        return card.czy_bije(self)


krol_karo1 = Card('K', 'diamonds')
krol_karo2 = Card('K', 'diamonds')

krol_karo1 is krol_karo2
