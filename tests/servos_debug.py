import time
import math
import mraa
import curses

POS = 0x02
ACTION = 0x09

d1 = 20.0
d2 = 26.0
d3 = 28.0
d4 = 20.0


class ServoControl:
    def __init__(self, port, baudrate=9600):
        self.serial = mraa.Uart(port)
        self.serial.setBaudRate(baudrate)
        self.serial.setMode(8, mraa.UART_PARITY_NONE, 1)
        self.serial.setFlowcontrol(False, False)

    def set_postion(self, channel, angle):
        ms = round(500 + 11.11 * angle)
        big_endian = ms.to_bytes(2, byteorder='little')
        self.serial.write(
            bytearray([0xFF, POS, channel, big_endian[0], big_endian[1]]))

    def set_postions(self, channels, angle):
        for ch in range(channels):
            self.set_postion(ch, angle)

    def steering(self, angle, turn_right=True):
        angles = self.calc_angles(angle)
        for i in range(3):
            if turn_right:
                self.set_postion(i, 90 - angles[i])
                self.set_postion(i+3, 90 - angles[i+3])
            time.sleep(0.5)

    def calc_angles(self, angle):
        R = round(d1 + d3 / math.tan(math.radians(angle)))
        a1 = round(math.degrees(math.atan(d3 / (d1 + R))))
        a2 = 0
        a3 = round(math.degrees(math.atan(d2 / (d1 + R))))
        a4 = round(math.degrees(math.atan(d3 / (R - d1))))
        a5 = 0
        a6 = round(math.degrees(math.atan(d2 / (R - d1))))
        return (a1, a2, a3, a4, a5, a6)


class Shell:
    def __init__(self):
        self.curses_init()

    def curses_init(self):
        stdscr = curses.initscr()
        curses.noecho()
        curses.cbreak()
        curses.start_color()
        curses.use_default_colors()
        curses.curs_set(0)
        stdscr.keypad(True)
        self.stdscr = stdscr

    def __del__(self):
        curses.nocbreak()
        self.stdscr.keypad(False)
        curses.echo()
        curses.endwin()

    def single_channel_step(self, servo):
        stdscr = self.stdscr
        channel = 0
        angles = [30, 60, 90, 120, 150]
        idx = angles.index(90)
        servo.set_postion(channel, angles[idx])
        while True:
            stdscr.clear()
            stdscr.refresh()
            stdscr.addstr(1, 0, f'>> Channel: {channel}, Angle: {angles[idx]}')
            ch = stdscr.getch()
            if ch == curses.KEY_LEFT:
                if idx - 1 < 0:
                    continue
                idx -= 1
                servo.set_postion(channel, angles[idx])
            elif ch == curses.KEY_RIGHT:
                if idx + 1 >= len(angles):
                    continue
                idx += 1
                servo.set_postion(channel, angles[idx])
            elif ch == curses.KEY_UP:
                if channel - 1 < 0:
                    continue
                channel -= 1
            elif ch == curses.KEY_DOWN:
                if channel + 1 >= 6:
                    continue
                channel += 1
            elif ch == ord('q'):
                break

    def multi_channels_step(self, servo):
        stdscr = self.stdscr
        channels = 0
        angles = [30, 60, 90, 120, 150]
        idx = angles.index(90)
        servo.set_postions(channels, angles[idx])
        while True:
            stdscr.clear()
            stdscr.refresh()
            stdscr.addstr(1, 0, f'>> Channel: {channels}, Angle: {angles[idx]}')
            ch = stdscr.getch()
            if ch == curses.KEY_LEFT:
                if idx - 1 < 0:
                    continue
                idx -= 1
                servo.set_postions(channels, angles[idx])
            elif ch == curses.KEY_RIGHT:
                if idx + 1 >= len(angles):
                    continue
                idx += 1
                servo.set_postions(channels, angles[idx])
            elif ch == curses.KEY_UP:
                if channels - 1 < 0:
                    continue
                channels -= 1
            elif ch == curses.KEY_DOWN:
                if channels + 1 >= 7:
                    continue
                channels += 1
            elif ch == ord('q'):
                break

    def double_channels_step(self, servo):
        stdscr = self.stdscr
        channel = 0
        angles = [30, 60, 90, 120, 150]
        idx = angles.index(90)
        while True:
            stdscr.clear()
            stdscr.refresh()
            stdscr.addstr(1, 0, f'>> Channel: {channel}:{channel+3}, Angle: {angles[idx]}')
            ch = stdscr.getch()
            if ch == curses.KEY_LEFT:
                if idx - 1 < 0:
                    continue
                idx -= 1
                servo.set_postion(channel, angles[idx])
                servo.set_postion(channel+3, angles[idx])
            elif ch == curses.KEY_RIGHT:
                if idx + 1 >= len(angles):
                    continue
                idx += 1
                servo.set_postion(channel, angles[idx])
                servo.set_postion(channel+3, angles[idx])
            elif ch == curses.KEY_UP:
                if channel - 1 < 0:
                    continue
                channel -= 1
            elif ch == curses.KEY_DOWN:
                if channel + 1 >= 3:
                    continue
                channel += 1
            elif ch == ord('q'):
                break

    def steering(self, servo):
        stdscr = self.stdscr
        angles = [15, 30, 45, 60]
        idx = 0
        servo.set_postions(6, 90)
        while True:
            stdscr.clear()
            stdscr.refresh()
            stdscr.addstr(1, 0, f'>> Angle: {angles[idx]}')
            ch = stdscr.getch()
            if ch == curses.KEY_LEFT:
                if idx - 1 < 0:
                    continue
                idx -= 1
                servo.steering(angles[idx])
            elif ch == curses.KEY_RIGHT:
                if idx + 1 >= len(angles):
                    continue
                idx += 1
                servo.steering(angles[idx])
            elif ch == ord('q'):
                break


if __name__ == '__main__':
    shell = Shell()
    servo = ServoControl('/dev/ttyUSB1')
    #shell.single_channel_step(servo)
    #shell.multi_channels_step(servo)
    #shell.double_channels_step(servo)
    shell.steering(servo)
