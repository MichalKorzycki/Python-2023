l = list(range(5, 10))
print(l)
try:
    i = int(input("podaj indeks "))
    print(f'Pod indeksem {i} jest element {l[i]}')  # Komentarz

    # Bardzo złozona operacja sprzatania

except IndexError as e:
    print(e)
except ValueError as e:
    print("In Value Error")
    print(e)
except Exception as e:
    print("In Exception")
    print(e)
else:
    print("Koniec")
finally:
    print("Finally")
