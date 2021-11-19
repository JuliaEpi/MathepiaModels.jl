using MathepiaModels
using DifferentialEquations
using Plots
using Test
const DE = DifferentialEquations
@testset "SIRbasic" begin
    u_0 = [1000, 0.1, 0]
    p_data = (Λ = 0, d = 0, α = 0, N = 1000, β = 0.2, γ = 0.1)
    tspan_data = (0.0, 100.0)
    prob_data = DE.ODEProblem(SIRbasic, u_0, tspan_data, p_data)
    data_solve = DE.solve(prob_data, Tsit5(), abstol = 1e-12, reltol = 1e-12, saveat = 0.1)
    data_withoutnois = Array(data_solve)
    data = data_withoutnois #+ Float32(2e-1)*randn(eltype(data_withoutnois), size(data_withoutnois))
    Plots.plot(data_solve.t, data[1, :], label = "Train S")
    Plots.plot!(data_solve.t, data[2, :], label = "Train I")
    @info "SIRbasic succeed"
end

@testset "SEIRbasic" begin
    u_0 = [1000, 0, 1, 0]
    p_data = (Λ = 0, d = 0, α = 0, N = 1000, β = 0.2, γ = 0.1, σ=1/5.2, ke = 0.3)
    tspan_data = (0.0, 100.0)
    prob_data = DE.ODEProblem(SEIRbasic, u_0, tspan_data, p_data)
    data_solve = DE.solve(prob_data, Tsit5(), abstol = 1e-12, reltol = 1e-12, saveat = 0.1)
    data_withoutnois = Array(data_solve)
    data = data_withoutnois #+ Float32(2e-1)*randn(eltype(data_withoutnois), size(data_withoutnois))
    Plots.plot(data_solve.t, data[1, :], label = "Train S")
    Plots.plot!(data_solve.t, data[2, :], label = "Train E")
    @info "SEIRbasic succeed"
end

@testset "SEIARbasic" begin
    u_0 = [1000, 0, 1, 0, 0]
    p_data = (Λ = 0, d = 0, α = 0, N = 1000, β = 0.2, γ = 0.1, σ=1/5.2, ke = 0.3, ka =0.3, ρ =0.3, γA = 0.1)
    tspan_data = (0.0, 100.0)
    prob_data = DE.ODEProblem(SEIARbasic, u_0, tspan_data, p_data)
    data_solve = DE.solve(prob_data, Tsit5(), abstol = 1e-12, reltol = 1e-12, saveat = 0.1)
    data_withoutnois = Array(data_solve)
    data = data_withoutnois #+ Float32(2e-1)*randn(eltype(data_withoutnois), size(data_withoutnois))
    @show Plots.plot(data_solve.t, data[1, :], label = "Train S")
    Plots.plot!(data_solve.t, data[2, :], label = "Train E")
    @info "SEIARbasic succeed"
end


@testset "SISbasic" begin
    u_0 = [1000,  1]
    p_data = (N = 1000, β = 0.2, γ = 0.1)
    tspan_data = (0.0, 1000.0)
    prob_data = DE.ODEProblem(SISbasic, u_0, tspan_data, p_data)
    data_solve = DE.solve(prob_data, Tsit5(), abstol = 1e-12, reltol = 1e-12, saveat = 0.1)
    data_withoutnois = Array(data_solve)
    data = data_withoutnois #+ Float32(2e-1)*randn(eltype(data_withoutnois), size(data_withoutnois))
    @show Plots.plot(data_solve.t, data[1, :], label = "Train S")
    Plots.plot!(data_solve.t, data[2, :], label = "Train E")
    @info "SIS succeed"
end