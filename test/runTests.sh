#!/bin/bash

# run tests from canfestival's original authors
rm -Rf build/*
rm -Rf testOD/generated/*
python2 ../objdictgen/objdictgen.py src/testOD/testNodeMaster.od src/testOD/generated/testNodeMaster.c
python2 ../objdictgen/objdictgen.py src/testOD/testNodeSlave.od src/testOD/generated/testNodeSlave.c
cmake -S . -B build/
make -C build -j 8
build/testapp 