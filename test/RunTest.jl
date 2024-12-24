push!(LOAD_PATH, "../") #Load the source path 
using VortexFilament


<<<<<<< HEAD
δ=0.001
IC = SingleRing(1.2)
=======
δ=0.01


f = Run(SingleLine(),δ)

fCPU = Array(f')

plot(fCPU[:,1],fCPU[:,2],fCPU[:,3],
        linewidth=5,
        xlimits=(-π,π),
        ylimits=(-π,π),
        zlimits=(-π,π),
        label=false)
>>>>>>> b28cc71f9ab0bd7658202bc3e7a22387ef04881e


f = Run(IC,δ)

fCPU = Array(f')

# plot(fCPU[:,1],fCPU[:,2],fCPU[:,3],
#         linewidth=5,
#         xlimits=(-π,π),
#         ylimits=(-π,π),
#         zlimits=(-π,π),
#         label=false)

# println("Done")


 