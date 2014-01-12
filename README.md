# ObjCrust

A proof of concept for using Rust to create an iOS static library.

Requires Xcode 5 and the iOS 7 SDK.

Based on [doublec/rust-from-c-example](https://github.com/doublec/rust-from-c-example)


## Status

What works:
- Rust code exposes simple functions for working with integers and floats, using values, pointers and structs.
- Make file creates architecture-specific libraries for the simulator (`i386`) and devices (`armv7` and `armv7s`).
- Creates universal static library for linking in iOS binary.
- iOS project builds and runs on simulator and devices.

What doesn't work:
- Compiles without standard library (maybe try with rust-core?)
- Functions that accept or return structs with float members cause a crash.
- Probably almost everything else...


## Usage

1. `git clone https://github.com/shilgapira/ObjCrust.git`
2. `cd ObjCrust/Rust`
3. `make`
4. `cd ../iOS`
5. `open ObjCrust.xcodeproj`
6. Build and run in Xcode
