

def function_with_error():
    l = [0]
    return l[6]


def ok_function():
    return function_with_error()

