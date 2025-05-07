#!/bin/bash

# Usage:
#   ./heuristic_diff.sh <commit1> <commit2>
#   ./heuristic_diff.sh --staged
#   ./heuristic_diff.sh --all
#
# This is used to estimate how many lines are changed between two commits,
# or between HEAD and staged (or current = staged + unstaged) changes.
# 
# A pair of added and removed lines is assumed to be a replacement, so the
# change count is divided by 2. Other than that, removed lines does not count
# towards the total heuristic.
#
# This heuristic is used in enforcement of the ConAct.

print_usage() {
    echo "Usage:"
    echo "  $0 <commit1> <commit2>     # Diff between two commits"
    echo "  $0 --staged                # Diff between HEAD and staged changes"
    echo "  $0 --all                   # Diff between HEAD and all current changes (staged + unstaged)"
    exit 1
}

# Decide what diff to run
if [ "$#" -eq 2 ]; then
    diff_cmd="git diff --numstat $1 $2"
elif [ "$1" = "--staged" ]; then
    diff_cmd="git diff --numstat --cached HEAD"
elif [ "$1" = "--all" ]; then
    diff_cmd="git diff --numstat HEAD"
else
    print_usage
fi

# Run the diff and compute the heuristic
eval "$diff_cmd" | awk '
{
    a = $1
    b = $2
    if (a == "-" || b == "-") next  # skip binary files
    a += 0; b += 0  # ensure numeric

    score = (a > b) ? (a - (b / 2)) : (a / 2)
    total += score
}
END {
    printf("Heuristic sum: %.2f\n", total)
}'
