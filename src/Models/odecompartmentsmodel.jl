@doc raw"""
    SIR(du,u,p,t)

Define classic SIR(suspected-infected-recovered) model. 

Parameters: (birth rate, natural death rate, disaese induced death rate, population, infection rate, recovery rate)

``$$
\begin{aligned}
& \frac{\rm{d}S}{\rm{dt}} = \Lambda -\beta S I/N - d S,\\
&\frac{\rm{d}I}{\rm{dt}} = \beta  S I/N - \gamma I - d I - \alpha I,\\
&\frac{\rm{d}R}{\rm{dt}} = \gamma I - d R,\\
\end{aligned}
$$``
"""
function SIRbasic(du, u, p,t)
    Λ,d,α,N,β,γ = p
    pop = (Λ>0&d>0) ? Λ/d : N
    S, I, R = u
    du[1] = Λ - β*S*I/pop - d*S
    du[2] =  β*S*I/pop - γ * I - d*I -α * I
    du[3] = γ * I - d * R
end
