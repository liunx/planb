import math

d1 = 20.0
d2 = 26.0
d3 = 28.0
d4 = 20.0


def calc_speeds(R, X=30.0):
    v1 = round(X * math.sqrt(d3**2 + (d1 + R)**2) / (R + d4))
    v2 = X
    v3 = round(X * math.sqrt(d2**2 + (d1 + R)**2) / (R + d4))
    v4 = round(X * math.sqrt(d3**2 + (R - d1)**2) / (R + d4))
    v5 = round(X * (R - d4) / (R + d4))
    v6 = round(X * math.sqrt(d2**2 + (R - d1)**2) / (R + d4))
    print(f'v1: {v1}, v2: {v2}, v3: {v3}, v4: {v4}, v5: {v5}, v6: {v6}')


def calc_angles(R):
    a1 = round(math.degrees(math.atan(d3 / (d1 + R))))
    a2 = 0
    a3 = round(math.degrees(math.atan(d2 / (d1 + R))))
    #a4 = round(math.degrees(math.radians(angular)))
    a4 = round(math.degrees(math.atan(d3 / (R - d1))))
    a5 = 0
    a6 = round(math.degrees(math.atan(d2 / (R - d1))))
    print(a1, a2, a3, a4, a5, a6)


if __name__ == '__main__':
    for ang in [15, 30, 45, 60]:
        R = round(d1 + d3 / math.tan(math.radians(ang)))
        print(R)
        calc_angles(R)
        calc_speeds(R)
