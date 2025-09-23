use anyhow::Result;
use mlua::{Lua, Result as LuaResult};
use std::{fs, path::Path};

pub struct Runtime {
    vm: Lua,
}

impl Runtime {
    pub fn new() -> Self {
        Runtime { vm: Lua::new() }
    }

    pub fn init(&self) -> Result<()> {
        let say_hi = self.vm.create_function(say_hi)?;

        self.vm.globals().set("say_hi", say_hi)?;

        Ok(())
    }

    pub fn exec(&self, source: &str) -> Result<()> {
        self.vm.load(source).exec()?;

        Ok(())
    }

    pub fn exec_file<P: AsRef<Path>>(&self, path: P) -> Result<()> {
        let source = fs::read_to_string(path)?;

        self.exec(&source)
    }
}

fn say_hi(_: &Lua, name: String) -> LuaResult<()> {
    super::say_hi(&name);
    Ok(())
}

pub fn main() -> Result<()> {
    let runtime = Runtime::new();
    let module = env!("LUA_MODULE_PATH");

    runtime.init()?;
    runtime.exec_file(module)?;

    Ok(())
}
