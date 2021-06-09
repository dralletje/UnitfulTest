set -e

julia \
  --project="." \
  --trace-compile=artifacts/traced-compile.jl \
  -e "import UnitfulTest; @time UnitfulTest.run(); @time UnitfulTest.run()" \
  > artifacts/time-compile.log

julia --project="." ./compile.jl

julia \
  --project="." \
  -Jartifacts/systemimage.so \
  --trace-compile=artifacts/traced-recompile.jl \
  -e "import UnitfulTest; @time UnitfulTest.run(); @time UnitfulTest.run()" \
  > artifacts/time-recompile.log