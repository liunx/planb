import math

d1 = 10.0
d2 = 15.0
d3 = 15.0
d4 = 10.0


def calc_speeds(X=90.0, R=30.0):
    v1 = X * math.sqrt(d3**2 + (d1 + R)**2) / (R + d4)
    v2 = X
    v3 = X * math.sqrt(d2**2 + (d1 + R)**2) / (R + d4)
    v4 = X * math.sqrt(d3**2 + (R - d1)**2) / (R + d4)
    v5 = X * (R - d4) / (R + d4)
    v6 = X * math.sqrt(d2**2 + (R - d1)**2) / (R + d4)
    print(f'v1: {v1}, v2: {v2}, v3: {v3}, v4: {v4}, v5: {v5}, v6: {v6}')


def calc_angulars(angular=30):
    R = d1 + d3 / math.tan(math.radians(angular))
    a1 = round(math.degrees(math.atan(d3 / (d1 + R))))
    a1 = math.atan(d3 / (d1 + R))
    a2 = 0
    a3 = round(math.degrees(math.atan(d2 / (d1 + R))))
    #a4 = round(math.degrees(math.radians(angular)))
    a4 = round(math.degrees(math.atan(d3 / (R - d1))))
    a5 = 0
    a6 = round(math.degrees(math.atan(d3 / (R - d1))))
    print(R)
    print(a1, a2, a3, a4, a5, a6)


if __name__ == '__main__':
    #calc_speeds()
    calc_angulars(30)
