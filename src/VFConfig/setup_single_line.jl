#Singleton for straight line
struct SingleLine <: InitCond
end
Adapt.@adapt_structure SingleLine

export SingleLine

#Generate initial pcount
function getInitPcount(::SingleLine,δ)
    println("-----------------------------------------------------")
    println("-------- Initialising straight line vortex ----------")
    println("-----------------------------------------------------")
    println("Changing size of pcount to fit with box_length and δ ")
    println("-: δ=$δ                                              ")
    return Int32(round((2π)/(0.75*δ)))
end

#Generate the structure
function init!(f_xyz,f_infront,f_behind,f_u1,f_u2,::SingleLine)
    pcount = length(f_behind)
    index = threadIdx().x
    f_xyz[index,1] = 0.0
    f_xyz[index,2] = 0.0
    f_xyz[index,3] = (Float32(index)-0.5)*2π/pcount

    if index == 1 #The first element
        f_behind[index] = pcount
        f_infront[index] = index+1
    elseif index == pcount #The last element
        f_behind[index] = index - 1
        f_infront[index] = 1
    else 
        f_behind[index] = index - 1
        f_infront[index] = index + 1
    end
    return nothing
end