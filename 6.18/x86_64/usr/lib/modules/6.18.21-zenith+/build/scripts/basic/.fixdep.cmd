savedcmd_scripts/basic/fixdep := /opt/android-ndk/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -Wp,-MMD,scripts/basic/.fixdep.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11   -I ./scripts/include    -fuse-ld=lld -o scripts/basic/fixdep scripts/basic/fixdep.c   

source_scripts/basic/fixdep := scripts/basic/fixdep.c

deps_scripts/basic/fixdep := \
    $(wildcard include/config/HIS_DRIVER) \
    $(wildcard include/config/MY_OPTION) \
    $(wildcard include/config/FOO) \
  scripts/include/xalloc.h \

scripts/basic/fixdep: $(deps_scripts/basic/fixdep)

$(deps_scripts/basic/fixdep):
