#! /bin/bash

files=$(git diff-tree --pretty="" --name-only --no-commit-id --diff-filter=d -r b2b5c91348b801bc93e4bcca0bc3b3a09a3b6686..5255074bee82bf05e0abe84f0a37a6a17bf6ee5f -- '**.php')
echo $files
if [ ! -z "$files" ]; then
    phpcs --standard=PSR12 $files
fi