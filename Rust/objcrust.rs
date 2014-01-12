#[crate_type = "lib"];
#[no_std];
#[allow(ctypes)];


struct Pair {
    foo: uint,
    bar: uint,
}

struct Complex {
    real: f64,
    img: f64,
}

#[no_mangle]
pub extern fn get_num() -> uint {
    42
}

#[no_mangle]
pub extern fn get_float() -> f64 {
    42.42
}

#[no_mangle]
pub extern fn inc_num(num: uint) -> uint {
    num + 1
}

#[no_mangle]
pub extern fn add_nums(num1: uint, num2: uint) -> uint {
    num1 + num2
}

#[no_mangle]
pub extern fn get_num_ptr(num: &uint) -> uint {
    *num
}

#[no_mangle]
pub extern fn inc_num_ptr(num: &mut uint) -> uint {
    *num += 1;
    *num
}

#[no_mangle]
pub extern fn inc_float_ptr(num: &mut f64) -> f64 {
    *num += 1.0;
    *num
}

#[no_mangle]
pub extern fn get_pair() -> Pair {
    Pair {
        foo: 42,
        bar: 10,
    }
}

#[no_mangle]
pub extern fn inc_pair(pair: Pair) -> Pair {
    Pair {
        foo: pair.foo + 1,
        bar: pair.bar + 1,
    }
}

#[no_mangle]
pub extern fn inc_pair_ptr(pair: &mut Pair) -> Pair {
    pair.foo += 1;
    pair.bar += 1;
    *pair
}

#[no_mangle]
pub extern fn get_complex() -> Complex {
    Complex {
        real: 10.0,
        img: 42.0,
    }
}

#[no_mangle]
pub extern fn inc_complex(comp: Complex) -> Complex {
    Complex {
        real: comp.real + 1.0,
        img: comp.img + 1.0,
    }
}

#[no_mangle]
pub extern fn inc_complex_ptr(comp: &mut Complex) {
    comp.real += 1.0;
    comp.img += 1.0;
}
