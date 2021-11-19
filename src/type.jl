abstract type AbstractEpiModel end

mutable struct SIR <: AbstractEpiModel
    tspan::Tuple
    parameter:: NamedTuple
    saveat
end