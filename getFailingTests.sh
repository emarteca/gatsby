#!/bin/bash

# assuming the code is already set to break_everything mode
yarn jest -- --o --runInBand > fails.out 2>&1
cat fails.out | grep "FAIL " > fails.csv
rm fails.out
python get_failing_tests.py
