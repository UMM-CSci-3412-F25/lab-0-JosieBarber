#!/bin/bash
# $1 is n such that it will run NthPrime with n
tar -xzf NthPrime.tgz #extracts the NthPrime tar archive

cd NthPrime || exit #moves to the NthPrime dir, if fails, exit
gcc -o NthPrime nth_prime.c main.c #compiles the c files

./NthPrime "$1" #runs NthPrime with the given parameter
