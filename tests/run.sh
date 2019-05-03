#!/usr/bin/env bash

echo "Running test01 ..."
mpirun --oversubscribe -np 2 ./test01

echo "Running test02 ..."
mpirun --oversubscribe -np 2 ./test02

echo "Running test03 ..."
./test03

echo "Running test04 ..."
./test04

echo "Running test05 ..."
mpirun --oversubscribe -np 4 ./test05

echo "Running test06 ..."
OMP_NUM_THREADS=4 ./test06

echo "Running test07 ..."
OMP_NUM_THREADS=4 mpirun --oversubscribe -np 4 ./test07

echo "Running test08 ..."
./test08
