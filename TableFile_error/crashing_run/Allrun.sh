#!/bin/bash

cd snappy_tutorial/
./clean.sh
./run.sh

cd ../inertial_0.2Mach_NACA0012_1e-3_6procs/
./cleanCase.sh
./run.sh
