#!/bin/bash
# Build script for neat-cv project
# Fallback script if just is not available

set -e

echo "Building CV..."
mkdir -p dist
typst compile src/cv.typ dist/cv.pdf
echo "✓ Built dist/cv.pdf"
