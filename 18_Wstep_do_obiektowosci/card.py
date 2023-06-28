values = ('9', '10', 'J', 'Q', 'K', 'A')
suits = ('clubs', 'diamonds', 'hearts', 'spades')


class Card():
    def __init__(self, suit, value):
        self.suit = suit
        self.value = value

    def __repr__(self):
        return f'Card("{self.suit}", "{self.value}")'


karta1 = Card(suits[3], values[5])
karta2 = Card('diamonds', 'K')

