#[cfg(feature = "lua")]
pub mod lua;
#[cfg(feature = "wasm")]
pub mod wasm;

pub fn say_hi(name: &str) {
    println!("Hi, {name}");
}
