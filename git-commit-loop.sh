#!/bin/bash

while true; do
    git commit --verbose --all --no-edit --amend
    sleep 10
done

