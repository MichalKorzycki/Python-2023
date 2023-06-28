def alphabet_range(end):
    return [chr(i) for i in range(ord('A'),  ord(end))]


lista = alphabet_range('Q')
for c in lista:
    print(c)