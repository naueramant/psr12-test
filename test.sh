#! /bin/bash

files=$(git show --pretty="" --name-only -- '**.php')
if [ ! -z "$files" ]; then
    phpcs --standard=PSR12 $files
fi