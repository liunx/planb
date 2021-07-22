#.PHONY: all
all: switcher

VERILATOR=verilator
VERILATOR_ROOT ?= $(shell bash -c 'verilator -V|grep VERILATOR_ROOT | head -1 | sed -e "s/^.*=\s*//"')
VINC := $(VERILATOR_ROOT)/include

obj_dir/Vswitcher.cpp: switcher.v
	$(VERILATOR) --trace -Wall -cc switcher.v

obj_dir/Vswitcher__ALL.a: obj_dir/Vswitcher.cpp
	make --no-print-directory -C obj_dir -f Vswitcher.mk

switcher: switcher.cpp obj_dir/Vswitcher__ALL.a
	g++ -I$(VINC) -I obj_dir            \
		$(VINC)/verilated.cpp       \
		$(VINC)/verilated_vcd_c.cpp \
		switcher.cpp obj_dir/Vswitcher__ALL.a                \
		-o switcher

.PHONY: clean
clean:
	rm -rf obj_dir/ switcher switcher_trace.vcd
