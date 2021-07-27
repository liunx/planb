#include <stdio.h>
#include <stdlib.h>
#include <pybind11/pybind11.h>
#include "Vswitcher.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include "verilated_heavy.h"

namespace py = pybind11;

class TestBench
{
public:
    TestBench(const std::string &filename)
    {
        tb = new Vswitcher;
        // Generate a trace
        Verilated::traceEverOn(true);
        tfp = new VerilatedVcdC;
        tb->trace(tfp, 00);
        tfp->open(filename.c_str());
    }

    ~TestBench()
    {
        tb->final();
        tfp->close();
    }

    void eval()
    {
        tb->eval();
    }

    uint64_t load(py::args args)
    {
        return 0;
    }

    void store(const py::kwargs& kwargs)
    {
    }

    void dump(uint64_t timeui)
    {
        tfp->dump(timeui);
    }

private:
    Vswitcher *tb;
    VerilatedVcdC *tfp;
};
