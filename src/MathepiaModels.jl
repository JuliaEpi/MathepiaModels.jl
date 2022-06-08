module MathepiaModels
using DifferentialEquations
using Plots

include("Models/odecompartmentsmodel.jl")

export SIRbasic!
export SEIRbasic!
export SEIARbasic!
export SISbasic!

end
