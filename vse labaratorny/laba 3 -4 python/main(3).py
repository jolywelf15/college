N = int(input('Enter N: 10 '))

print('Odd Squares from 1 to', N)
print('')

for i in range(1, N + 1):
    if i % 2 != 0:
        print(f'{i}^2 = {i * i}')

input()
