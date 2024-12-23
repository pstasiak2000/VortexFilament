module VortexFilament
using CUDA, Adapt
using Documenter
using Dates

export Run

include("VF_general.jl")
include("initial_condition.jl")


function Run(IC,δ)

    pcount = getInitPcount(IC,δ)
    println("-: pcount is now at $pcount                          ")

    f_xyz      = CuMatrix{Float32,CUDA.UnifiedMemory}(undef, pcount, 3)
    f_u        = CuMatrix{Float32,CUDA.UnifiedMemory}(undef, pcount, 3)
    f_u1       = CuMatrix{Float32,CUDA.UnifiedMemory}(undef, pcount, 3)
    f_u2       = CuMatrix{Float32,CUDA.UnifiedMemory}(undef, pcount, 3)
    f_u_mf     = CuMatrix{Float32,CUDA.UnifiedMemory}(undef, pcount, 3)
    f_u_sup    = CuMatrix{Float32,CUDA.UnifiedMemory}(undef, pcount, 3)
    f_u_loc    = CuMatrix{Float32,CUDA.UnifiedMemory}(undef, pcount, 3)
    f_u_pll    = CuMatrix{Float32,CUDA.UnifiedMemory}(undef, pcount, 3)
    f_f_mf     = CuMatrix{Float32,CUDA.UnifiedMemory}(undef, pcount, 3)
    f_u_n      = CuMatrix{Float32,CUDA.UnifiedMemory}(undef, pcount, 3)
    f_curv     = CuVector{Float32,CUDA.UnifiedMemory}(undef, pcount)
    f_stretch  = CuVector{Float32,CUDA.UnifiedMemory}(undef, pcount)
    f_ghosti   = CuMatrix{Float32,CUDA.UnifiedMemory}(undef, pcount, 3)
    f_ghostb   = CuMatrix{Float32,CUDA.UnifiedMemory}(undef, pcount, 3)
    f_infront  = CuVector{Int32,CUDA.UnifiedMemory}(undef, pcount)
    f_behind   = CuVector{Int32,CUDA.UnifiedMemory}(undef, pcount)
    f_closest  = CuVector{Int32,CUDA.UnifiedMemory}(undef, pcount)
    f_closestd = CuVector{Float32,CUDA.UnifiedMemory}(undef, pcount)

    banner_print()
    initialiseVortex!(f_xyz,f_infront,f_behind,f_u1,f_u2, SingleLine())
end


end # module VortexFilament