#!/usr/bin/env bash

mpirun --oversubscribe -np 2 ./test01
mpirun --oversubscribe -np 2 ./test02
./test03
./test04
mpirun --oversubscribe -np 4 ./test05
