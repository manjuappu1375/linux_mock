#!/bin/bash

calculate_tax() {
    local salary=$1
    local tax_rate=0
    local net_salary=0

    if (( salary < 10000 )); then
        tax_rate=0
        echo "No tax"
    elif (( salary >= 10000 && salary < 25000 )); then
        tax_rate=5
        echo "5% tax"
    elif (( salary >= 25000 && salary < 60000 )); then
        tax_rate=10
        echo "10% tax"
    else
        tax_rate=20
        echo "20% tax"
    fi

    if (( tax_rate > 0 )); then
        tax_amount=$(echo "scale=2; $salary * $tax_rate / 100" | bc)
        net_salary=$(echo "scale=2; $salary - $tax_amount" | bc)
    else
        net_salary=$salary
    fi

    echo "Salary after tax: $net_salary"
}

read -p "Enter your salary: " salary

calculate_tax $salary
