#!/bin/bash

cd /app || exit 1
flake8 --select=C,E,F,W,DJ \
       --max-line-length 80 \
       --max-complexity 10 \
       --ignore=W503
black . -tpy310 -l80 --check
