include ../Makefile.common

%.gnustep: ../%.m 
	@echo "build $< do $@"
	clang-15 $< -o $@ -DUSE_GNUSTEP `gnustep-config --objc-flags` `gnustep-config --base-libs` 

all: $(FILES) 
