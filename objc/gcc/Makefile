include ../Makefile.common

%.gnustep: ../%.m 
	@echo "build $< do $@"
	gcc-12 $< -o $@ -DUSE_GNUSTEP `gnustep-config --objc-flags` `gnustep-config --base-libs` 

all: $(FILES) 
