z = set(range(10))
z
z = {'a', 'b', 'c'}
z
'a' in z
'd' in z
'd' not in z
z2 = {'a', 'b', 'c', 'd'}
z < z2
z3 = {'d', 'e'}
z|z3
z&z2
z&z3
z2-z
z2^z3

d = { z: 3} # Błąd
fz = frozenset(z)
d = {fz: 3}
d
