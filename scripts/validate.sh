#!/bin/bash

counter=0
for file in `find "$PWD"/content/ -name *.xml`; do
    filename=$(basename $file)
    echo -e "+++ Start validation of $filename."
    cd `dirname $file`
    StdInParse -s -n < $file

    if test $? -ne 0; then
        echo "--- Validation of $filename failed."
        let counter++
    else
        echo "+++ Validation of $filename succeeded."
    fi
done

if test $counter -ne 0; then
    echo "--- $counter files not valid."
    exit 1
else
    echo "+++ All files successfully validated."
fi