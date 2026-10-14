savedcmd_scripts/mod/sumversion.o := /opt/android-ndk/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -Wp,-MMD,scripts/mod/.sumversion.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11   -I ./scripts/include   -c -o scripts/mod/sumversion.o scripts/mod/sumversion.c

source_scripts/mod/sumversion.o := scripts/mod/sumversion.c

deps_scripts/mod/sumversion.o := \
  scripts/include/xalloc.h \
  scripts/mod/modpost.h \
  scripts/mod/../../include/linux/module_symbol.h \
  scripts/include/list_types.h \
  scripts/mod/elfconfig.h \

scripts/mod/sumversion.o: $(deps_scripts/mod/sumversion.o)

$(deps_scripts/mod/sumversion.o):
