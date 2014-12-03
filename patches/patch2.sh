#!/bin/bash

cd frameworks/av
echo "frameworks/av"
patch -p1 < ../../device/samsung/skomer/patches/frameworks/av/001-av.patch
patch -p1 < ../../device/samsung/skomer/patches/frameworks/av/003-STE-OMX-getSupportedProfileLevel-fix.patch
patch -p1 < ../../device/samsung/skomer/patches/frameworks/av/005-ACodec-don-t-configure-software-encoders-decoders.patch
patch -p1 < ../../device/samsung/skomer/patches/frameworks/av/006-STE-OMX-Fix-Streaming-Video.patch
patch -p1 < ../../device/samsung/skomer/patches/frameworks/av/ 007-Use-GraphicBuffer-Optimize.patch

cd ..

cd base
echo "frameworks/base"
patch -p1 < ../../device/samsung/skomer/patches/frameworks/base/fix-ok-google.patch
patch -p1 < ../../device/samsung/skomer/patches/frameworks/base/qcom-staturation.patch

cd ..

cd native
echo "frameworks/native"
patch -p1 < ../../device/samsung/skomer/patches/frameworks/native/native.patch

cd ../..


cd system/core
echo "system/core"
patch -p1 < ../../device/samsung/skomer/patches/system/core/core.patch

cd ../..
echo "done"
