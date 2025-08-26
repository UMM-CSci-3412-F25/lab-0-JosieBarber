#!/bin/bash
int=$1 #sets int to the first input
tar -xzf NthPrime.tgz #extracts the NthPrime tar archive

cd NthPrime || exit #moves to the NthPrime dir, if fails, exit
gcc -o NthPrime nth_prime.c main.c #compiles the c files

./NthPrime $1 #runs NthPrime with the given parameter
