push!(LOAD_PATH, "../") #Load the source path 
using VortexFilament


δ=0.01


f = Run(SingleLine(),δ)

fCPU = Array(f')

plot(fCPU[:,1],fCPU[:,2],fCPU[:,3],
        linewidth=5,
        xlimits=(-π,π),
        ylimits=(-π,π),
        zlimits=(-π,π),
        label=false)




 