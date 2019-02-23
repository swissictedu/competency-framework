#!/bin/bash

counter=0
for file in `find "$PWD"/content/ -name *.xml`; do
    echo -e "+++ Start validation of $file."
    cd `dirname $file`
    StdInParse -f -s -n < $file

    if test $? -ne 0; then
        echo "--- Validation of $file failed."
        let counter++
    else
        echo "+++ Validation of $file succeeded."
    fi
done

if test $counter -ne 0; then
    echo "--- $counter files not valid."
    exit 1
else
    echo "+++ All files successfully validated."
fi