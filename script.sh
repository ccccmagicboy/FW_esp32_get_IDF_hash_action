#!/bin/bash

set -e

if [[ ! -z "$SKIP_DEBUGGER" ]]; then
  echo "Skipping debugger because SKIP_DEBUGGER enviroment variable is set"
  exit
fi

# Install tmate on macOS or Ubuntu
echo Setting up tmate...
echo $INPUT_TEST


