#!/bin/bash

check_even_odd() {
    local number=$1

    if (( number % 2 == 0 )); then
        echo "$number is even."
    else
        echo "$number is odd."
    fi
}

read -p "Enter a number: " number

check_even_odd $number
