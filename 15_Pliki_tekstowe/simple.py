f = open('README.md', encoding='utf8')

n = 0

for line in f:
    print(f'{n:03d} {line.strip()}')
    n += 1
