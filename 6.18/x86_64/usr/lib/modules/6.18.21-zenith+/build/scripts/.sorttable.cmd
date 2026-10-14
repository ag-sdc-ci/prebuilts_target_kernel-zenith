savedcmd_scripts/sorttable := /opt/android-ndk/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -Wp,-MMD,scripts/.sorttable.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11   -I ./scripts/include  -I./tools/include -DMCOUNT_SORT_ENABLED  -fuse-ld=lld -o scripts/sorttable scripts/sorttable.c   -lpthread

source_scripts/sorttable := scripts/sorttable.c

deps_scripts/sorttable := \
  tools/include/tools/be_byteshift.h \
  tools/include/tools/le_byteshift.h \

scripts/sorttable: $(deps_scripts/sorttable)

$(deps_scripts/sorttable):
