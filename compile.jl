using PackageCompiler;

create_sysimage(
  [:Unitful, :UnitfulTest],
  sysimage_path="./artifacts/systemimage.so",
  project=".",
  precompile_statements_file="./artifacts/traced-compile.jl",
)