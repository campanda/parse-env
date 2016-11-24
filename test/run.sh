#!/bin/sh

# setup
cp my_file.original my_file

# test cases
sh ../parse-env.sh my_file
status=`diff my_file expected_file`

# teardown
rm my_file

exit $status
