#! /bin/sh
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i $SSH_SECRETKEY_PATH "$@"