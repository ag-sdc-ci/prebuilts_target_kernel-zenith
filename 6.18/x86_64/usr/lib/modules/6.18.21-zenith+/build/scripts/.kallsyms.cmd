savedcmd_scripts/kallsyms := /opt/android-ndk/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -Wp,-MMD,scripts/.kallsyms.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11   -I ./scripts/include    -fuse-ld=lld -o scripts/kallsyms scripts/kallsyms.c   

source_scripts/kallsyms := scripts/kallsyms.c

deps_scripts/kallsyms := \
  scripts/include/xalloc.h \

scripts/kallsyms: $(deps_scripts/kallsyms)

$(deps_scripts/kallsyms):
