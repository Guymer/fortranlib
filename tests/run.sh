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
convert test09.pbm test09.png
optipng test09.png

echo "Running test10 ..."
./test10
convert test10.pgm test10.png
optipng test10.png

echo "Running test11 ..."
./test11
convert test11_fire.ppm test11_fire.png
optipng test11_fire.png
convert test11_jet.ppm test11_jet.png
optipng test11_jet.png
convert test11_g2b.ppm test11_g2b.png
optipng test11_g2b.png
convert test11_r2g.ppm test11_r2g.png
optipng test11_r2g.png
convert test11_r2o2g.ppm test11_r2o2g.png
optipng test11_r2o2g.png

echo "Running test12 ..."
./test12
