import math
import numpy as np

d1 = 20.0
d2 = 30.0
d3 = 30.0
d4 = 20.0

steering_angles = [-60, -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50, 60]
drive_powers = [-60, -30, 0, 30, 40, 50, 60, 70, 80, 90, 100]


def calc_drive_powers(R, X, direct_left):
    if R == 0:
        return np.array([X] * 6)
    v1 = round(X * math.sqrt(d3**2 + (d1 + R)**2) / (R + d4))
    v2 = X
    v3 = round(X * math.sqrt(d2**2 + (d1 + R)**2) / (R + d4))
    v4 = round(X * math.sqrt(d3**2 + (R - d1)**2) / (R + d4))
    v5 = round(X * (R - d4) / (R + d4))
    v6 = round(X * math.sqrt(d2**2 + (R - d1)**2) / (R + d4))
    if direct_left:
        powers = np.array([v4, v5, v6, v1, v2, v3])
    else:
        powers = np.array([v1, v2, v3, v4, v5, v6])
    m = powers.max()
    # can not exceed 100%
    if m > 100:
        powers = powers * (100 / m)
    return powers.astype(int)


def calc_steering_angles(R, direct_left):
    if R == 0:
        return np.array([0] * 6)
    a1 = round(math.degrees(math.atan(d3 / (d1 + R))))
    a2 = 0
    a3 = round(math.degrees(math.atan(d2 / (d1 + R))))
    #a4 = round(math.degrees(math.radians(angular)))
    a4 = round(math.degrees(math.atan(d3 / (R - d1))))
    a5 = 0
    a6 = round(math.degrees(math.atan(d2 / (R - d1))))
    if direct_left:
        return np.array([-a1, a2, a3, -a4, a5, a6])
    else:
        return np.array([a1, a2, -a3, a4, a5, -a6])


if __name__ == '__main__':
    c_file = 'swcontrol.h'
    tab = ' ' * 2
    sdef = f'#define STEERING_ANGLES_NUM {len(steering_angles)}\n'
    sdef += f'#define DRIVE_POWERS_NUM {len(drive_powers)}\n'
    sdef += f'#define SERVOS_NUM 6\n'
    sdef += f'#define MOTORS_NUM 6\n'
    sdef += '\n\n'

    s1 = f'uint8_t steering_angles_lookup_table[STEERING_ANGLES_NUM][SERVOS_NUM] = {{\n'
    s2 = f'uint8_t drive_powers_lookup_table[STEERING_ANGLES_NUM][DRIVE_POWERS_NUM][MOTORS_NUM] = {{\n'
    for i in range(len(steering_angles)):
        ang = steering_angles[i]
        s = f'{tab}// Angle: {ang}\n'
        s1 += s
        s2 += s
        if ang == 0:
            R = 0
        else:
            R = round(d1 + d3 / math.tan(math.radians(abs(ang))))
        if ang > 0:
            angles = calc_steering_angles(R, False)
        else:
            angles = calc_steering_angles(R, True)
        s2 += f'{tab}{{\n'
        for ii in range(len(drive_powers)):
            pow = drive_powers[ii]
            if ang > 0:
                powers = calc_drive_powers(R, pow, False)
            else:
                powers = calc_drive_powers(R, pow, True)
            if ii == len(drive_powers) - 1:
                s2 += f'{tab}{tab}{{ ' + ','.join(powers.astype(str)) + ' }\n'
            else:
                s2 += f'{tab}{tab}{{ ' + ','.join(powers.astype(str)) + ' },\n'

        if i == len(steering_angles) - 1:
            s1 += f'{tab}{{ ' + ','.join(angles.astype(str)) + ' }\n'
            s2 += f'{tab}}}\n'
        else:
            s1 += f'{tab}{{ ' + ','.join(angles.astype(str)) + ' },\n'
            s2 += f'{tab}}},\n'

    s1 += '};\n\n'
    s2 += '};\n\n'
    with open(c_file, 'w') as f:
        f.writelines([sdef, s1, s2])
