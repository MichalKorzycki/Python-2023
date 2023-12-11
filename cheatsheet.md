# Listy (`list`)

- `l = [3, 4, 5, 6]` - literał
- `l2 = list(l)` - konstrukcja
- `l2.append(7)` - dodanie na koniec
- `l2[0]` - pobranie 1szego elementu
- `for a in l: ...` - iteracja
---
# Krotki (`tuple`)

- `t = (3, 4, 5, 6)` - literał
- `t2 = tuple(l)` - konstrukcja
- `t2.append(7)` - NIE WOLNO :)
- `t[0]` - pobranie 1szego elementu
- `a, b, c, d = t` - "rozpakowanie" krotki

---
# Słowniki (`dict`)

- `m = {'a':1, 'b':2 }` - literał
- `m2 = dict(m)` - konstrukcja
- `m3 = dict([('a', 1), ('b', 2)])` - konstrukcja
- `m3['a']` - pobranie elementu
- `m3.get('a', 0)` - pobranie elementu z domyślną wartością
- `for k in m3: ...` - iteracja po kluczach
- `for k in m3.keys(): ...` - też iteracja po kluczach
- `for k,v for m3.items(): ...` - iteracja po parach klucz/wartość

---
# Zbiory (`set`)

- `s = {'a', 'b'}` - literał
- `s2 = set()` - konstrukcja
- `s2.add('c')` - dodanie do zbioru
- `'c' in s2` - sprawdzenie czy jest w zbiorze
