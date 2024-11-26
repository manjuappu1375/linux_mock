#!/bin/bash

is_triangle() {
    a=$1
    b=$2
    c=$3

    if (( a + b > c && a + c > b && b + c > a )); then
        return 0  # True
    else
        return 1  # False
    fi
}

triangle_type() {
    a=$1
    b=$2
    c=$3

    if (( a == b && b == c )); then
        echo "Equilateral Triangle"
    elif (( a == b || b == c || a == c )); then
        echo "Isosceles Triangle"
    else
        echo "Scalene Triangle"
    fi
}

read -p "Enter the lengths of the three sides (separated by spaces): " a b c

if [[ "$a" =~ ^[0-9]+$ && "$b" =~ ^[0-9]+$ && "$c" =~ ^[0-9]+$ ]]; then
    if is_triangle $a $b $c; then
        echo "The sides can form a triangle."
        triangle_type $a $b $c
    else
        echo "The sides cannot form a triangle."
    fi
else
    echo "Invalid input. Please enter positive integers for the sides."
fi
