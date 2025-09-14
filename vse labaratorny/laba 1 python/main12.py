import math

def triangle_area(a, b, c):
    
    s = (a + b + c) / 2
    
    area = math.sqrt(s * (s - a) * (s - b) * (s - c))
    return area


a = float(input("10: "))
b = float(input("5: "))
c = float(input("5: "))

# Проверяем, что введенные значения могут образовать треугольник
if a + b > c and a + c > b and b + c > a:
    area = triangle_area(a, b, c)
    print(f"Площадь треугольника: {area:.2f}")
