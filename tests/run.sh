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

echo "Running test09 ..."
./test09
convert test09.pgm test09.png
optipng test09.png

echo "Running test10 ..."
./test10
convert test10_fire.ppm test10_fire.png
optipng test10_fire.png
convert test10_jet.ppm test10_jet.png
optipng test10_jet.png
convert test10_r2g.ppm test10_r2g.png
optipng test10_r2g.png
