s = 'Ala ma {0} kotów'.format(5)
s

'Ala ma ' + str(5) + ' kotów'

s = 'Ala ma {0} kot{1}'.format(5, 'ów')
s

s = 'Ala ma {0} kot{1}'.format(4, 'y')
s

f'Pi to jest mniej więcej {3.1415926:.3}'

for i in range(12):
    print(f'{i:2}')

for i in range(12):
    print(f'{i:02}')
