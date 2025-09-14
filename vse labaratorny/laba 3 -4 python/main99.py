x = [0] * 100
i, n, j = 0, 0, 0
r = 0.0

n = int(input('Введите кол-во спортсменов: '))
for i in range(1, n + 1):
    r = float(input(f'{i} спортсмен. Введите результат: '))
    if r <= 13.2:
        j += 1
        x[j] = i

print('Номера участников, выполнивших норму:')
for i in range(1, j + 1):
    print(x[i], end=' ')
input()