cfg_if::cfg_if! {
    if #[cfg(any(feature = "lua", feature = "luajit"))] {
        mod lua;
        pub use lua::*;
    } else if #[cfg(feature = "wasm")] {
        mod wasm;
        pub use wasm::*;
    }
}

pub fn say_hi(name: &str) {
    println!("Hi, {name}");
}
