using MathepiaModels
using DifferentialEquations
using Plots
using Test
const DE = DifferentialEquations
@testset "MathepiaModels.jl" begin
    u_0 = [1000, 0.1, 0]
    p_data = (Λ = 0, d = 0, α = 0, N = 1000, β = 0.2, γ = 0.1)
    tspan_data = (0.0, 100.0)
    prob_data = DE.ODEProblem(SIRbasic, u_0, tspan_data, p_data)
    data_solve = DE.solve(prob_data, Tsit5(), abstol = 1e-12, reltol = 1e-12, saveat = 0.1)
    data_withoutnois = Array(data_solve)
    data = data_withoutnois #+ Float32(2e-1)*randn(eltype(data_withoutnois), size(data_withoutnois))
    Plots.scatter(data_solve.t, data[1, :], label = "Train S")
    Plots.scatter!(data_solve.t, data[2, :], label = "Train I")
end
