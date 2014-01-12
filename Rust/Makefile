all: libobjcrust.a

bytecodes: objcrust.rs
	rustc --emit-llvm --target i386-apple-darwin objcrust.rs
	mv objcrust.bc objcrust-i386.bc
	rustc --emit-llvm --target armv7-apple-darwin objcrust.rs
	mv objcrust.bc objcrust-armv7.bc
	rustc --emit-llvm --target armv7s-apple-darwin objcrust.rs
	mv objcrust.bc objcrust-armv7s.bc

objects: bytecodes
	clang -arch i386 -c objcrust-i386.bc
	clang -arch armv7 -c objcrust-armv7.bc
	clang -arch armv7s -c objcrust-armv7s.bc

libraries: objects
	ar -cr objcrust-i386.a objcrust-i386.o
	ar -cr objcrust-armv7.a objcrust-armv7.o
	ar -cr objcrust-armv7s.a objcrust-armv7s.o

libobjcrust.a: libraries
	lipo -create -output libobjcrust.a objcrust-i386.a objcrust-armv7.a objcrust-armv7s.a

clean:
	rm -f *.bc *.o *.a
