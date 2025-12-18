#!/bin/bash

export $(grep -v '^#' ../.env | xargs)

DRY_RUN=""

# If at least one argument was provided -> dry run
if (( $# > 0 )); then
  DRY_RUN="--dry-run"
fi

echo "dry-run: ${DRY_RUN}"

rsync -avz ${DRY_RUN} -e "ssh -p 23 -i ${sshPrivateKey}" \
  --progress \
  --stats \
  ${storagePathOld} \
  ${username}@${hostname}:${storagePathRemote} | pv -cN transfer

