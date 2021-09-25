#!/bin/sh
set -x

export TERM=dumb

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    exit 1
fi
cd functions && yarn
firebase --token ${FIREBASE_TOKEN} use ${FIREBASE_PROJECT}
firebase deploy --token ${FIREBASE_TOKEN} ${FIREBASE_OPTIONS}
