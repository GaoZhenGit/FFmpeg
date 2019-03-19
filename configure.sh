export NDK=/home/gz/Android/android-ndk-r17c

export API=14
export NDK=/home/gz/Android/android-ndk-r17c
export SYSROOT=$NDK/platforms/android-$API/arch-arm/
export TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64
export PREFIX=./output
./configure \
--prefix=$PREFIX \
--enable-shared \
--enable-static \
--disable-doc \
--disable-ffplay \
--disable-ffprobe \
--disable-symver \
--disable-ffmpeg \
--cc=$TOOLCHAIN/bin/arm-linux-androideabi-gcc \
--cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
--target-os=android \
--arch=arm \
--enable-cross-compile \
--sysroot=$SYSROOT \
--extra-cflags="-I$NDK/sysroot/usr/include/arm-linux-androideabi -isysroot $NDK/sysroot -fPIC -DANDROID -D__thumb__ -mthumb -Wfatal-errors -Wno-deprecated -mfloat-abi=softfp -marm -march=armv7-a" \
--enable-neon