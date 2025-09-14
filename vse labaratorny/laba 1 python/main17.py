import os

x = int(input('342:\n'))
first = x // 100
second = (x // 10) % 10
third = x % 10

y = third * 100 + second * 10 + first
difference = abs(x - y)

print(f'Разность между {x} и {y} равна {difference}')
input()
