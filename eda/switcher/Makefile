CCFLAGS := -Wno-sign-compare -faligned-new
INCLUDES :=`python3 -m pybind11 --includes`

#.PHONY: all
all: libswitcher.so switcher.so

VERILATOR=verilator
VERILATOR_ROOT ?= $(shell bash -c 'verilator -V|grep VERILATOR_ROOT | head -1 | sed -e "s/^.*=\s*//"')
VINC := $(VERILATOR_ROOT)/include

obj_dir/Vswitcher.cpp: switcher.v
	$(VERILATOR) --trace -Wall -CFLAGS "-fPIC" -cc switcher.v

obj_dir/Vswitcher__ALL.o: obj_dir/Vswitcher.cpp
	make --no-print-directory  -C obj_dir -f Vswitcher.mk

libswitcher.so: switcher.hpp obj_dir/Vswitcher__ALL.o
	g++ -fPIC -shared -I$(VINC) -I obj_dir  $(INCLUDES) \
		$(VINC)/verilated.cpp       \
		$(VINC)/verilated_vcd_c.cpp \
		switcher.hpp obj_dir/Vswitcher__ALL.o                \
		-o $@

switcher.so: libswitcher.so switcher_wrapper.cpp
	g++ -Wall -shared -std=gnu++14 -fPIC $(CCFLAGS) \
	$(INCLUDES) -I .  \
	-I$(VINC) -I obj_dir switcher_wrapper.cpp \
	-o $@ -L. -lswitcher -Wl,-rpath,.

.PHONY: clean
clean:
	rm -rf obj_dir/ libswitcher.so switcher.so switcher_trace.vcd
