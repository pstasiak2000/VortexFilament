# push!(LOAD_PATH,"../src/")
using Documenter
using VortexFilament

#Generates the subpages of the vortex initial conditions
SUBSECTION_PAGES = "vortex_configs/" .* readdir("./docs/src/vortex_configs/")

makedocs(sitename="VortexFilament.jl", remotes = nothing,
    pages = [
        "Home" => "index.md",
        "Manual" => "manual.md",
        "Vortex Configurations" => SUBSECTION_PAGES
            ]    
)