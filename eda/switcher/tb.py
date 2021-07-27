from switcher import TestBench


def demo01():
    tb = TestBench('switcher_trace.vcd')
    for i in range(100):
        tb.set('clk', 1)
        tb.eval()
        tb.dump(10*i)
        tb.set('clk', 0)
        tb.eval()
        tb.dump(10*i + 5)


if __name__ == '__main__':
    demo01()