#!/bin/bash
# auther: ccccmagicboy

echo hello the world!
echo $INPUT_TEST

python /home/runner/work/_actions/ccccmagicboy/FW_esp32_get_IDF_hash_action/master/action.py

echo bye bye!
echo "::set-output name=test_out::aaaabbbbcccc"


