
not_read = True
while not_read:
    try:
        n = int(input("Podaj liczbę:"))
        not_read = False
    except ValueError as e:
        print(e)

print(f'Podałeś liczbę {n}')