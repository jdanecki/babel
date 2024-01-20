include ../Makefile.common

%.gnustep: ../%.m 
	@echo "buduj $< do $@"
	gcc-12 $< -o $@ -DUSE_GNUSTEP `gnustep-config --objc-flags` `gnustep-config --base-libs` 

all: $(FILES) 
