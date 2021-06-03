#! /bin/bash

files=$(git diff-tree --no-commit-id --name-status --diff-filter=d -r ${{ github.event.pull_request.base.sha }}..${{ github.event.after }})
echi $files
if [ ! -z "$files" ]; then
    phpcs --standard=PSR12 $files
fi