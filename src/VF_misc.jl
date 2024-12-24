<<<<<<< HEAD
"""
    convert_to_struct(VFArr::CUDA.CuMatrix{Float32},
=======
export convert
"""
    convert(VFArr::CUDA.CuMatrix{Float32},
>>>>>>> b28cc71f9ab0bd7658202bc3e7a22387ef04881e
            VFArrInt::CUDA.CuMatrix{Int32},
            VFStruct::VortexFilaments)

Converts GPU vortex filament array into the CPU structure for saving to file.
"""
<<<<<<< HEAD
function convert_to_struct(VFArr::CUDA.CuMatrix{Float32},
=======
function convert(VFArr::CUDA.CuMatrix{Float32},
>>>>>>> b28cc71f9ab0bd7658202bc3e7a22387ef04881e
                 VFArrInt::CUDA.CuMatrix{Int32},
                 VFStruct::VortexFilaments)
    return nothing
end