# ObjCrust

A proof of concept for using Rust to create an iOS static library.

Requires Xcode 5 and the iOS 7 SDK.


## Status

What works:
- Rust code exposes simple functions for working with integers and floats, using values, pointers and structs.
- Make file creates architecture-specific libraries for the simulator (`i386`) and devices (`armv7` and `armv7s`).
- Creates universal static library for linking in iOS binary.
- iOS project builds and runs on simulator and devices.

What doesn't work:
- Functions that accept or return structs with float members cause a crash.


## Usage

1. Clone the repository using`git clone https://github.com/shilgapira/objcrust.git`
2. Build Rust code by running `make` in the `./Rust` directory
3. Run the Xcode project in the `./iOS` directory
