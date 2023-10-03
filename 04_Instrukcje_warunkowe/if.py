a = 3

# IF
if a == 3:
    print("Then shalt thou count to three, no more, no less.")
    print("Three shall be the number thou shalt count, and the number of the counting shall be three.")
    print("Four shalt thou not count, neither count thou two, excepting that thou then proceed to three. ")

n = int(input('Podaj liczbę'))
print(n)

# ELSE
if n == 1:
    print('Jeden')
elif n == 2:
    print('dwa')
elif n == 3:
    print('trzy')
elif n == 4:
    print('cztery')
elif n == 5:
    print('pięc')
else:
    print('tej liczby nie znam')

# Warunki logiczne

if (n == 17) or not (n == 17):
    print("Tertium non datur")
    print("Innej opcji nie ma")

# := "Walrus" operator
if (i := int(input("podaj liczbę naturalną"))) % 2 == 0:
    print(f'{i} jest parzyste')
else:
    print(f'{i} jest nieparzyste')

i = int(input("podaj liczbę naturalną"))
suma_cyfr = (i % 10 + i // 10)
if (suma_cyfr % 7 == 0) and (i % 2 == 0):
    print(f'Dobra liczba')
else:
    print(f'Zła liczba')
