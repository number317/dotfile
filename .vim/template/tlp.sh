#!/bin/bash

set -euo pipefail

main(){
    echo "Hello world!"
}

[[ "$0" == "$BASH_SOURCE" ]] && main "$@" || true
