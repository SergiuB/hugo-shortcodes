#!/bin/bash

spec="spec.html"
result="public/index.html"


function runDiff {
    cmp $result $spec
    r=$?
    if [ $r != 0 ]; then
        echo ""
        diff -c $result $spec
    fi
    return $r
}

function printFail {
    echo ""
    echo "Tests fail."
    echo "Please make sure test passes before sending a PR."
}

function printSuccess {
    echo "Tests pass."
    echo "You are good to go!"
}

hugo && echo "" && runDiff && printSuccess || printFail
