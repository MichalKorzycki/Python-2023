f = open('README.md', encoding='utf8')

n = 0

while line := f.readline():
    print(f'{n:03d} {line.strip()}')
    n += 1
