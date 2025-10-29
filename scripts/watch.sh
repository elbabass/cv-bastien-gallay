#!/bin/bash
# Watch script for neat-cv project
# Automatically rebuilds CV when sources change

echo "Watching for changes..."
typst watch src/cv.typ dist/cv.pdf
