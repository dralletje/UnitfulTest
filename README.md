# Unitful PackageCompile Test

I have a very simple script in `UnitfulTest/src/UnitfulTest.jl` that I expected to precompile pretty good. It doesn't, and I have no idea how to optimise it.

## Run

```
./run.sh
```

This will run the script, then precompile using the trace-compile from that run, and then run the script again with the systemimage. It'll put some files in `/artifacts`, most useful are `time-compile.log` and `time-recompile.log`, these are just the output of the run without and with systemimage. There is also `trace-compile.jl` and `trace-recompile.jl`, those are the `--trace-compile` outputs of both runs.

## Output on my system

Without system image:

```
  0.540343 seconds (967.55 k allocations: 60.230 MiB, 3.31% gc time, 99.88% compilation time)
  0.000016 seconds (2 allocations: 192 bytes)
```

With system image:

```
  0.329208 seconds (517.21 k allocations: 32.148 MiB, 3.75% gc time, 99.80% compilation time)
  0.000014 seconds (2 allocations: 192 bytes)
```

As you can see, the second run is still pretty bad.
