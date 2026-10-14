savedcmd_scripts/dtc/srcpos.o := /opt/android-ndk/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -Wp,-MMD,scripts/dtc/.srcpos.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11   -I ./scripts/include -I ./scripts/dtc/libfdt -DNO_YAML  -c -o scripts/dtc/srcpos.o scripts/dtc/srcpos.c

source_scripts/dtc/srcpos.o := scripts/dtc/srcpos.c

deps_scripts/dtc/srcpos.o := \
  scripts/dtc/dtc.h \
  scripts/dtc/libfdt/libfdt_env.h \
  scripts/dtc/libfdt/fdt.h \
  scripts/dtc/util.h \
  scripts/dtc/srcpos.h \

scripts/dtc/srcpos.o: $(deps_scripts/dtc/srcpos.o)

$(deps_scripts/dtc/srcpos.o):
