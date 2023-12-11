import sys
import fib_module

if __name__ == '__main__':
    n = int(sys.argv[1])
    print(f'Pierwsze {n} liczb Fibonacciego')
    print(fib_module.fib(n))
    print(fib_module.__name__)

