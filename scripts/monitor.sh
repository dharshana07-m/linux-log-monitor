#!/bin/bash
LOG_FILE="/home/dharshana/log_monitor/logs/app.log"
OUTPUT_FILE="/home/dharshana/log_monitor/output/errors.txt"

echo "Checking for errors at $(date)" >> $OUTPUT_FILE
ERROR_COUNT=$(grep -i "error"$LOG_FILE|wc -l)
if[$ERROR_COUNT -gt 0];then
  echo "Total errors found:$ERROR_COUNT">>$OUTPUT_FILE
  grep -i"error"$LOG_FILE>>$OUTPUT_FILE
else
  echo "No errors found">>$OUTPUT_FILE
fi
echo "---------------------" >> $OUTPUT_FILE
