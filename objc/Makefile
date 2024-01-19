all: 1-hello.bin
	make -C gcc
	make -C clang

1-hello.bin: 1-hello.m
	gcc-12 $< -o  $@ -lobjc

clean:
	rm -rf gcc/*.gnustep clang/*.gnustep gcc/*.d clang/*.d

run:
	gcc/10-klasy.gnustep
	clang/10-klasy.gnustep
