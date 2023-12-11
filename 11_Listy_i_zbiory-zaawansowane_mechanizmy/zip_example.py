numbers = list(range(1,11))
letters = [chr(i) for i in range(ord('A'), ord('A')+10)]

print(numbers)
print(letters)

print(zip(letters, numbers))

print(list(zip(letters, numbers)))

slownik = dict(x=4, z=8)
print(slownik)
slownik = dict({'x': 4, 'y': 5}, z=8)
print(slownik)
slownik = dict([('x', 4), ('y', 5)])
print(slownik)
slownik = dict(zip(letters, numbers))
print(slownik)