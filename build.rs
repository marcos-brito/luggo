fn main() {
    let enabled = [
        cfg!(feature = "lua"),
        cfg!(feature = "luajit"),
        cfg!(feature = "wasm"),
    ]
    .iter()
    .filter(|&&f| f)
    .count();

    if enabled == 0 {
        panic!("You must enable exactly one feature: lua, luajit, wasm");
    }

    if enabled > 1 {
        panic!("Only one feature can be enabled at a time: lua, luajit, wasm");
    }
}
