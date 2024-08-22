#!/bin/bash

export CROSS_COMPILE="./toolchain/arm-cortex_a7-linux-gnueabihf_5.3.0/bin/arm-cortex_a7-linux-gnueabihf-"
export TARGET_PRODUCT=asus
export MTK_ROOT_CUSTOM=./mediatek

echo "**** START CLEANING ****"
make mrproper
make distclean

rm -rf ./mediatek/config/out/
rm -rf ./mediatek/custom/out/
rm -rf ./out/
rm -rf ./build_result
rm -rf kernelFile

find . -name "modules.builtin" -type f -print -delete

echo "**** DONE CLEANING ****"

