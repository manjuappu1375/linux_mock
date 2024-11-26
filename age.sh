#!/bin/bash

read -p "Enter your age: " age

if [ "$age" -lt 18 ]; then
    echo "Minor"
elif [ "$age" -ge 18 ] && [ "$age" -lt 60 ]; then
    echo "Major"
else
    echo "Old Age"
fi
