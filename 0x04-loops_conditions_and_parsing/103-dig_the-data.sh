#!/usr/bin/env bash
#groups visitors by IP and HTTP status code, and displays this data

awk '{print $1 " " $9}' apache-access.log | sort | uniq -c | sort -rn