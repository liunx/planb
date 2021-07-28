from switcher import TestBench


class Test(TestBench):
    TIME_UNIT = 5
    def __init__(self, filename) -> None:
        super().__init__(filename)
        self.tickcount = 0

    def tick(self):
        self.set('clk', self.tickcount % 2)
        self.eval()
        self.dump(self.tickcount * self.TIME_UNIT)

    def set_at(self, param, val, period):
        if period == self.tickcount:
            self.set(param, val)

    def serialize_set(self, param, val, bitcnt, start):
        for i in range(bitcnt):
            v = (val >> i) & 1
            if self.tickcount == (start + i*2):
                self.set(param, v)
            elif self.tickcount == (start + i*2+1):
                self.set(param, 0)

    def process(self, msg, duration, start=0):
        while self.tickcount < (start+duration):
            self.set_at('reset', 1, start)
            self.set_at('motors_in', 0b1, start)
            self.set_at('servo_in', 0b1, start)
            self.set_at('reset', 0, start+4)
            self.serialize_set('sda', msg, 8, start+7)
            self.tick()
            self.tickcount += 1


if __name__ == '__main__':
    test = Test('switcher_trace.vcd')
    test.process(0b11111100, 30)
    start = test.tickcount
    test.process(0b00000101, 30, start=start)
    start = test.tickcount
    test.process(0b00010001, 30, start=start)
    start = test.tickcount
    test.process(0b10000001, 30, start=start)
    start = test.tickcount
    test.process(0b11111100, 30, start=start)
