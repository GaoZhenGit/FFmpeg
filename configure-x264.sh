#!/bin/bash
export NDK=/home/gz/Android/android-ndk-r14b
export SYSROOT=$NDK/platforms/android-21/arch-arm/
export TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64
export CPU=arm
export PREFIX=./output
export ADDI_CFLAGS="-marm -I/home/gz/Documents/projects/x264/build/include"
export ADDI_LDFLAGS="-L/home/gz/Documents/projects/x264/build/lib"
./configure \
    --prefix=$PREFIX \
    --target-os=android \
    --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
    --arch=arm \
    --sysroot=$SYSROOT \
    --extra-cflags="-Os -fpic $ADDI_CFLAGS" \
    --extra-ldflags="$ADDI_LDFLAGS" \
    --cc=$TOOLCHAIN/bin/arm-linux-androideabi-gcc \
    --nm=$TOOLCHAIN/bin/arm-linux-androideabi-nm \
    --enable-shared \
    --enable-runtime-cpudetect \
    --enable-gpl \
    --enable-small \
    --enable-cross-compile \
    --disable-debug \
    --disable-static \
    --disable-doc \
    --disable-asm \
    --disable-ffmpeg \
    --disable-ffplay \
    --disable-ffprobe \
    --enable-postproc \
    --enable-avdevice \
    --disable-symver \
    --disable-stripping \
    --enable-libx264 \
    --enable-encoder=libx264 \
$ADDITIONAL_CONFIGURE_FLAG