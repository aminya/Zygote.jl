should_precompile = true


# Don't edit the following! Instead change the script for @snoopi_bot.
ismultios = false
ismultiversion = false
# precompile_enclosure
@static if !should_precompile
    # nothing
elseif !ismultios && !ismultiversion
    include("/home/runner/work/Zygote.jl/Zygote.jl/deps/SnoopCompile/precompile/precompile_Zygote.jl")
    _precompile_()
else

end # precompile_enclosure
