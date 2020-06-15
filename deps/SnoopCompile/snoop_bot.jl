using SnoopCompile

botconfig = BotConfig(
  "Zygote";
  yml_path = "SnoopCompile.yml",
  exclusions = ["SqEuclidean"],
  check_eval = true,
)

snoop_bot(
  botconfig,
  "$(@__DIR__)/example_script.jl",
)
