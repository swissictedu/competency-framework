#!/bin/bash
for file in `find "$PWD"/content/ -name *.xml`; do
    filename=$(basename $file)
    echo -e "+++ Start validation of $filename."
    cd `dirname $file`
    StdInParse -s -n < $file

    if test $? -ne 0; then
        echo "--- Validation of $filename failed."
        exit 1
    else
        echo "+++ Validation of $filename succeeded."
    fi
done