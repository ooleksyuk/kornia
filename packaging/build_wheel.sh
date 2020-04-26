#!/bin/bash -ex

## NOTE: define KORNIA_BUILD_VERSION each release
## KORNIA_BUILD_VERSION=0.1.4

export OUT_DIR="/tmp/remote"

# move to project root and create the wheel
cd /tmp
rm -rf kornia/
git clone https://github.com/kornia/kornia.git

cd /tmp/kornia
python3 setup.py clean
python3 setup.py bdist_wheel

mkdir -p $OUT_DIR
cp dist/*.whl $OUT_DIR/

## upload
## NOTE: to upload install twine
## Example: python3 -m twine upload dist/*
