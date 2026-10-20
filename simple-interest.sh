#!/bin/bash
# This script calculates simple interest given principal, annual rate of interest and time period in years.
# Do not use this in production. Sample purpose only.

# Author: Upkar Lidder (IBM)
# Addtional Authors:
# shravani-3176

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest

# Output:
# simple interest = (p * t * r) / 100
# total amount = principal + simple interest

# Function to validate numeric and non-negative inputs
validate_number() {
    local val="$1"
    local name="$2"

    if [ -z "$val" ]; then
        echo "Error: $name cannot be empty."
        exit 1
    fi

    if [[ "$val" =~ ^- ]]; then
        echo "Error: $name cannot be negative. Please enter a non-negative value."
        exit 1
    fi

    if ! [[ "$val" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        echo "Error: $name must be a valid numeric value."
        exit 1
    fi
}

echo "Enter the principal:"
read p
validate_number "$p" "Principal"

echo "Enter rate of interest per year:"
read r
validate_number "$r" "Rate of interest"

echo "Enter time period in years:"
read t
validate_number "$t" "Time period"

# Calculate simple interest and total amount using awk for portable decimal arithmetic
calculation=$(awk -v p="$p" -v r="$r" -v t="$t" 'BEGIN {
    si = (p * r * t) / 100;
    total = p + si;
    if (si == int(si)) printf "%.0f ", si; else printf "%.2f ", si;
    if (total == int(total)) printf "%.0f\n", total; else printf "%.2f\n", total;
}')

s=$(echo "$calculation" | awk '{print $1}')
total=$(echo "$calculation" | awk '{print $2}')

echo "The simple interest is: "
echo "$s"
echo "The total amount is: "
echo "$total"
