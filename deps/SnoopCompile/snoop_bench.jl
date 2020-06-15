using SnoopCompile

botconfig = BotConfig(
  "Zygote";
  yml_path = "SnoopCompile.yml",
  exclusions = ["SqEuclidean"],
  check_eval = true,
)

println("Benchmarking the inference time of `using Zygote`")
snoop_bench(
  botconfig,
  :(using Zygote),
)


println("Benchmarking the inference time of `using Zygote` & basic function test")
snoop_bench(
  botconfig,
  "$(@__DIR__)/example_script.jl",
)
