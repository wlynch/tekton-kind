#!/bin/bash

# standard bash error handling
set -o errexit;
set -o pipefail;
set -o nounset;
# debug commands
set -x;

# cleanup on exit (useful for running locally)
cleanup() {
    kind delete cluster || true
}
trap cleanup EXIT

main() {
  # Sample command, replace with your own command.
  kubectl get nodes
}

main 