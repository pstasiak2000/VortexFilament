push!(LOAD_PATH,"../src/")

using Documenter
using VortexFilament


makedocs(sitename="VortexFilament.jl", remotes = nothing,
    pages = [
        "Home" => "index.md",
        "Configurations" => "configs.md",
    ]    
)