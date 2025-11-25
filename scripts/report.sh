#!/bin/bash

timestamp=$(date +"%Y-%m-%d_%H-%M")
output="output/report_$timestamp.txt"

echo "Creating report at $output ..."
bash scripts/hardening.sh > "$output"

echo "Done!"
