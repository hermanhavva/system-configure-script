#!/bin/bash

fast_output=$(fast | grep -oP '(?<=->)\s*.*')
date_output=$(date | awk '{split($4, time, ":"); printf "%s-%s %s:%s | \n", $2, $3, time[1], time[2]}')

result=$(printf "%s%s" "$date_output" "$fast_output")
echo $result