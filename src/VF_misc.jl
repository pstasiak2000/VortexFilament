export convert
"""
    convert(VFArr::CUDA.CuMatrix{Float32},
            VFArrInt::CUDA.CuMatrix{Int32},
            VFStruct::VortexFilaments)

Converts GPU vortex filament array into the CPU structure for saving to file.
"""
function convert(VFArr::CUDA.CuMatrix{Float32},
                 VFArrInt::CUDA.CuMatrix{Int32},
                 VFStruct::VortexFilaments)
    return nothing
end