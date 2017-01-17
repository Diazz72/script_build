#!/bin/bash

# ccache
export USE_CCACHE=1
export CCACHE_DIR=/home/ccache/deniel #replace "ssh_username" in this line with your own ssh username.
prebuilts/misc/linux-x86/ccache/ccache -M 50G

# clean
make clean && make clobber
export KBUILD_BUILD_USER=Deniel
export KBUILD_BUILD_HOST=Diazz72
export TARGET_UNOFFICIAL_BUILD_ID=OFFICIAL

# build
. build/envsetup.sh
lunch cos_herolte-userdebug
mka bacon -j8
