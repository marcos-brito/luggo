use anyhow::{Context, Result};
use std::{fs, io::Read, path::Path};
use wasmtime::{Caller, Engine, Instance, Linker, Module, Store};

pub struct Runtime {
    engine: Engine,
    linker: Linker,
}

impl Runtime {
    pub fn new() -> Self {
        let engine = Engine::default();
        let linker = Linker::new(&engine);

        Runtime { engine, linker }
    }

    pub fn init(&self) -> Result<()> {
        self.linker.func_wrap("host", "say_hi", super::say_hi)?;

        Ok(())
    }

    pub fn exec<S: AsRef<[u8]>>(&self, source: S) -> Result<()> {
        let module = Module::new(&self.engine, &source)?;
        let mut store = Store::new(&self.engine, ());
        let instance = self.linker.instantiate(&mut store, &module)?;
        let main = instance
            .get_func(&mut store, "main")
            .context("main function not found")?;

        main.call(&mut store, &[], &mut [])?;

        Ok(())
    }

    pub fn exec_file<P: AsRef<Path>>(&self, path: P) -> Result<()> {
        let source = fs::read(&path)?;

        self.exec(&source)
    }
}

pub fn main() -> Result<()> {
    println!("this is wasm module");

    Ok(())
}
