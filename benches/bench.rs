use criterion::{Criterion, black_box, criterion_group, criterion_main};
use luggo::lua;
use pprof::criterion::{Output, PProfProfiler};

pub fn lua_bench(c: &mut Criterion) {
    c.bench_function("lua main", |b| b.iter(|| lua::main()));
}

criterion_group!{
    name = benches;
    config = Criterion::default().with_profiler(PProfProfiler::new(100, Output::Flamegraph(None)));
    targets = lua_bench
}

criterion_main!(benches);
