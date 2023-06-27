print("Importing "+__name__)

my_variable = 7


def fib(n):   # return Fibonacci series up to n
    result = []
    a, b = 0, 1
    while a < n:
        result.append(a)
        a, b = b, a+b
    return result


if __name__=='__main__':
    print(f'Testowo: {fib(5)}')
