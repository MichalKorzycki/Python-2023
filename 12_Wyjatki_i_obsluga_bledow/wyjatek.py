l = list(range(5, 10))
print(l)
try:
    i = int(input("podaj indeks "))
    print(f'Pod indeksem {i} jest element {l[i]}')
except IndexError as e:
    print(e)
else:
    print("Koniec")
finally:
    print("Finally")
