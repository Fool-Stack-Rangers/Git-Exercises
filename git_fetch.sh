#!/bin/sh

output=$(git fetch -p)

echo "Got git fetch output"
echo "${output}"