abstract type InitCond end #Super type of all initial conditions

include("./VFConfig/setup_single_line.jl")





function initialiseVortex!(f_xyz,f_infront,f_behind,f_u1,f_u2,IC::InitCond)
    @assert supertype(typeof(IC)) == InitCond
    pcount = length(f_behind)
    kernel = @cuda launch=false init!(f_xyz,f_infront,f_behind,f_u1,f_u2,IC)
    config = launch_configuration(kernel.fun)
    threads = min(pcount, config.threads)
    blocks = cld(pcount,threads)

    CUDA.@sync begin
        kernel(f_xyz,f_infront,f_behind,f_u1,f_u2, IC; threads, blocks)
    end
end