abstract type InitCond end #Super type of all initial conditions

include("./VFConfig/setup_single_line.jl")
include("./VFConfig/setup_single_ring.jl")




<<<<<<< HEAD
=======

>>>>>>> b28cc71f9ab0bd7658202bc3e7a22387ef04881e
function initialiseVortex!(f,fint,pcount,IC::InitCond)
    @assert supertype(typeof(IC)) == InitCond
    kernel = @cuda launch=false init!(f,fint,pcount,IC)
    config = launch_configuration(kernel.fun)
    threads = min(pcount, config.threads)
    blocks = cld(pcount,threads)
<<<<<<< HEAD
    println(blocks)
    println(threads)
=======
>>>>>>> b28cc71f9ab0bd7658202bc3e7a22387ef04881e
    CUDA.@sync begin
        kernel(f,fint,pcount, IC; threads, blocks)
    end
end