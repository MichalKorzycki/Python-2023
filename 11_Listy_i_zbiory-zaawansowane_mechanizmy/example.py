kwadraty = []

for i in range(10):
    kwadraty.append(i*i)

print(kwadraty)


print([i*i for i in range(10)])

kwadraty = []

for i in range(10):
    if i % 2 == 0:
        kwadraty.append(i * i)

print(kwadraty)

print([i * i for i in range(10) if i % 2 == 0])
