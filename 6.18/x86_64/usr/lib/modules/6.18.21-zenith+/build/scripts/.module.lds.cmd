savedcmd_scripts/module.lds := /opt/android-ndk/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -E -Wp,-MMD,scripts/.module.lds.d -nostdinc -I./arch/x86/include -I./arch/x86/include/generated -I./include -I./include -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -D__KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument   -P -Ux86_64 -D__ASSEMBLY__ -DLINKER_SCRIPT -o scripts/module.lds scripts/module.lds.S

source_scripts/module.lds := scripts/module.lds.S

deps_scripts/module.lds := \
    $(wildcard include/config/UNWIND_TABLES) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/CRYPTO_FIPS140_MOD) \
    $(wildcard include/config/LTO_CLANG) \
  include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  include/asm-generic/codetag.lds.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
  arch/x86/include/generated/asm/module.lds.h \
  include/asm-generic/module.lds.h \

scripts/module.lds: $(deps_scripts/module.lds)

$(deps_scripts/module.lds):
