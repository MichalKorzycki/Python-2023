f = open('README.md')

n = 0

for line in f:
    print(f'{n:03d} {line.strip()}')
    n += 1
