#!/usr/bin/env python3

import io
import os

# Usage: run as `filter_to_join_part.py`
# Put inputs in the directory 'input_logs' with '.txt' extension
# Outputs will be created in 'output_logs', overwriting contents
# Edit important_text to find different entries in logs
important_text = ["has joined", "has left"]

def main():
  for file in os.listdir("input_logs"):
    if file.endswith(".txt"):
      with open(os.path.join("input_logs", file), "r") as raw_log:
        with open(os.path.join("output_logs", os.path.basename(file)), "w") as filtered_log:
          for line in raw_log:
            if any(x in line for x in important_text):
              filtered_log.write(line)

# Call the main() function to begin the program.
main()
