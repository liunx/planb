from switcher import TestBench

tb = TestBench('switcher_trace.vcd')
tb.eval()
tb.dump(100)