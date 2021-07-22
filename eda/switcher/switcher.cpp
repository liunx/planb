#include <stdio.h>
#include <stdlib.h>
#include "Vswitcher.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include "verilated_heavy.h"

#define HALF_CLOCK 5

using namespace std;

class TestBench
{
public:
    TestBench(Vswitcher *tb, VerilatedVcdC *tfp)
        : tickcount(0), tb(tb), tfp(tfp)
    {
    }

    void tick()
    {
        tb->clk = !tb->clk;
        tb->eval();
        tfp->dump(HALF_CLOCK * tickcount);
        tickcount++;
    }

    template <typename T>
    void set_once_at(unsigned int atcount, T *param, T val)
    {
        if (tickcount == atcount)
        {
            *param = val;
            tb->eval();
        }
    }

    template <typename T>
    void set_always_at(unsigned int atcount, T *param, T val)
    {
        if (tickcount % atcount == 0)
        {
            *param = val;
            tb->eval();
        }
    }

private:
    Vswitcher *tb;
    VerilatedVcdC *tfp;
    unsigned int tickcount;
};

int main(int argc, char **argv)
{
    unsigned tickcount = 0;

    // Call commandArgs first!
    Verilated::commandArgs(argc, argv);

    // Instantiate our design
    Vswitcher *tb = new Vswitcher;

    // Generate a trace
    Verilated::traceEverOn(true);
    VerilatedVcdC *tfp = new VerilatedVcdC;
    tb->trace(tfp, 00);
    tfp->open("switcher_trace.vcd");

    auto testbench = TestBench(tb, tfp);

    // Start sim
    tb->clk = 0;
    tb->reset = 1;
    tb->sda = 0;
    tb->lines_in = 0x00;

    for (int i = 0; i < 100; i++)
    {
        testbench.set_once_at(2, &tb->reset, (unsigned char)0);
        testbench.set_once_at(4, &tb->sda, (unsigned char)1);
        testbench.set_once_at(5, &tb->sda, (unsigned char)0);
        testbench.set_once_at(6, &tb->sda, (unsigned char)1);
        testbench.set_once_at(7, &tb->sda, (unsigned char)0);
        
        testbench.tick();
    }

    tb->final();
    tfp->close();
}
