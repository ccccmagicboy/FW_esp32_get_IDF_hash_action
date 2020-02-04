#!/bin/bash
# auther: ccccmagicboy

echo hello the world!
echo $INPUT_TEST

python ./action.py

echo bye bye!
echo "::set-output name=test_out::aaaabbbbcccc"


