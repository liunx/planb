#include <stdio.h>
#include <stdlib.h>
#include <iostream>
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

    uint64_t get(const std::string &param)
    {
        if (param == "clk")
            return tb->clk;
        else if (param == "reset")
            return tb->reset;
        else if (param == "sda")
            return tb->sda;
        else if (param == "lines_in")
            return tb->lines_in;
        else if (param == "lines_out")
            return tb->lines_out;

        return -1;
    }

    void set(const std::string &param, uint64_t val)
    {
        if (param == "clk")
            tb->clk = val;
        else if (param == "reset")
            tb->reset = val;
        else if (param == "sda")
            tb->sda = val;
        else if (param == "lines_in")
            tb->lines_in = val;
    }

    void dump(uint64_t timeui)
    {
        tfp->dump(timeui);
    }

private:
    Vswitcher *tb;
    VerilatedVcdC *tfp;
};
