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

    def process(self, duration):
        while self.tickcount < duration:
            self.set_at('reset', 1, 0)
            self.set_at('lines_in', 0b1111, 0)
            self.set_at('reset', 0, 2)
            self.serialize_set('sda', 0b1111, 8, 5)
            self.tick()
            self.tickcount += 1


if __name__ == '__main__':
    test = Test('switcher_trace.vcd')
    test.process(20)
