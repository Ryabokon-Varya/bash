#!/bin/bash

> numbers.txt

for i in {1..5}; do
    echo $((RANDOM % 10 + 1)) >> numbers.txt
done

echo "Generated numbers:"
cat numbers.txt

min=$(sort -n numbers.txt | head -n 1)

echo $min > numbers.txt

echo "Smallest number:"
cat numbers.txt
