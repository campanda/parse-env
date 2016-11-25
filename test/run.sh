#!/bin/sh

# setup
cp my_file.original my_file

# test case
sh ../parse-env my_file
diff my_file expected_file
