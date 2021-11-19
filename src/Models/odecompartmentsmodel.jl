@doc raw"""
    SIR(du,u,p,t)

Define classic SIR(suspected-infected-recovered) model. 

Parameters: (birth rate, natural death rate, disaese induced death rate, population, infection rate, recovery rate)

```math
\begin{aligned}
& \frac{\rm{d}S}{\rm{dt}} = \Lambda -\beta S I/N - d S,\\
&\frac{\rm{d}I}{\rm{dt}} = \beta  S I/N - \gamma I - d I - \alpha I,\\
&\frac{\rm{d}R}{\rm{dt}} = \gamma I - d R,\\
\end{aligned}
```
"""
function SIRbasic(du, u, p, t)
    Λ, d, α, N, β, γ = p
    pop = (Λ > 0 & d > 0) ? Λ / d : N
    S, I, R = u
    du[1] = Λ - β * S * I / pop - d * S
    du[2] = β * S * I / pop - γ * I - d * I - α * I
    du[3] = γ * I - d * R
end


@doc raw"""
    SEIR(du,u,p,t)

Define classic SEIR(suspected-exposed-infected-recovered) model. 

Parameters: (birth rate, natural death rate, disaese induced death rate, population, infection rate, recovery rate, incubation period,
exposed decreasing infection ratio)

```math
\begin{aligned}
& \frac{\rm{d}S}{\rm{dt}} = \Lambda -\beta S (I+k_{E}E)/N - d S,\\
&\frac{\rm{d}E}{\rm{dt}} = \beta  S (I+k_{E}E)/N - \sigma E -d E,\\
&\frac{\rm{d}I}{\rm{dt}} =\sigma E - \gamma I - d I - \alpha I,\\
&\frac{\rm{d}R}{\rm{dt}} = \gamma I - d R,\\
\end{aligned}
```
"""
function SEIRbasic(du, u, p, t)
    Λ, d, α, N, β, γ, σ, ke = p
    pop = (Λ > 0 & d > 0) ? Λ / d : N
    S, E, I, R = u
    du[1] = Λ - β * S * (I + ke * E) / pop - d * S
    du[2] = β * S * (I + ke * E) / pop - σ * E - d * E
    du[3] = σ * E - γ * I - d * I - α * I
    du[4] = γ * I - d * R
end

@doc raw"""
    SEIAR(du,u,p,t)

Define classic SEIR(suspected-exposed-infected-asymptomatic-recovered) model. 

Parameters: (birth rate, natural death rate, disaese induced death rate, population, infection rate, recovery rate, incubation period,
exposed decreasing infection ratio, asymptomatic infection decreasing infection ratio, asymptomatic rate,recovery rate of asymptomatic)

```math
\begin{aligned}
& \frac{\rm{d}S}{\rm{dt}} = \Lambda -\beta S (I+k_{E}E+k_{A}A)/N - d S,\\
&\frac{\rm{d}E}{\rm{dt}} = \beta  S (I+k_{E}E++k_{A}A)/N - \sigma E -d E,\\
&\frac{\rm{d}I}{\rm{dt}} =(1-\rho)\sigma E - \gamma I - d I - \alpha I,\\
&\frac{\rm{d}A}{\rm{dt}} =\rho\sigma E - \gamma_{A} A - d A,\\
&\frac{\rm{d}R}{\rm{dt}} = \gamma I +\gamma_{A} A - d R,\\
\end{aligned}
```
"""
function SEIARbasic(du, u, p, t)
    Λ, d, α, N, β, γ, σ, ke, ka, ρ, γA= p
    pop = (Λ > 0 & d > 0) ? Λ / d : N
    S, E, I, A, R = u
    du[1] = Λ - β * S * (I + ke * E + ka * A) / pop - d * S
    du[2] = β * S * (I + ke * E + ka * A) / pop - σ * E - d * E
    du[3] = (1-ρ)*σ * E - γ * I - d * I - α * I
    du[3] = ρ * σ * E - γA * A - d * A
    du[4] = γ * I +  γA * A - d * R
end

@doc raw"""
    SIS(du,u,p,t)

Define classic SIR(suspected-infected-suspected) model. 

Parameters: (population, infection rate, recovery rate)

```math
\begin{aligned}
& \frac{\rm{d}S}{\rm{dt}} = -\beta S I/N + \gamma I,\\
&\frac{\rm{d}I}{\rm{dt}} = \beta  S I/N - \gamma I,\\
\end{aligned}
```
"""
function SISbasic(du, u, p, t)
    pop, β, γ = p
    S, I = u
    du[1] = - β * S * I / pop + γ * I
    du[2] = β * S * I / pop - γ * I 
end