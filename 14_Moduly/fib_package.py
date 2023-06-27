import sys
from fibonacci import fibonacci1 as f1

if __name__ == '__main__':
    print(sys.path)  # Tu szukamy modułów
    print(f1.fib(25))
