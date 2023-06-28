import sys


class A:
    def do_it(self):
        print(f'Jestem w klasie {self.__class__.__name__}')


class B(A):
    pass


if __name__ == '__main__':
    obj = globals()[sys.argv[1]]()
    obj.do_it()