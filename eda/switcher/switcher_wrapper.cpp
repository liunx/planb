#include <pybind11/pybind11.h>
#include <switcher.hpp>

namespace py = pybind11;

PYBIND11_MODULE(switcher, m) {
    py::class_<TestBench>(m, "TestBench")
    .def(py::init<const std::string &>())
    .def("eval", &TestBench::eval)
    .def("dump", &TestBench::dump)
    .def("set", &TestBench::set)
    .def("get", &TestBench::get)
    ;
}