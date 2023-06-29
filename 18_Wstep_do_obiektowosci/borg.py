class Borg:
    __shared_state = {}

    def __init__(self):
        self.__dict__ = self.__shared_state


b1 = Borg()
b1.name = "We are the Borg"

b2 = Borg()
b2.name
