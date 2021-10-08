import time
import mraa


def serial_init():
    serial = mraa.Uart('/dev/ttyUSB1')
    serial.setBaudRate(9600)
    serial.setMode(8, mraa.UART_PARITY_NONE, 1)
    serial.setFlowcontrol(False, False)
    return serial

def turn_90(serial, a=0x3f):
    serial.write(bytearray([a, 90]))

def demo01(serial):
    a = 0x3f
    for i in range(10):
        for ang in [10, 30, 60, 90, 120, 180, 90]:
            serial.write(bytearray([a, ang]))
            time.sleep(2)


if __name__ == '__main__':
    serial = serial_init()
    turn_90(serial, a=0x01)
