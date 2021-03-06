type TypeSystemParams          # parameters for MPC solver
    g::Float64
    rho::Float64
    dt::Float64
    m::Float64
    xF::Array{Float64,2}
    TypeSystemParams( g = 9, rho = 4,  dt= 0, m=0, xF = [0 0 0 0] ) = new(g, rho, dt, m, xF)
end

type TypeLMPCparams          # parameters for MPC solver
    Qt::Float64
    Qf::Float64
    R::Array{Float64,2}
    N::Int64
    TypeLMPCparams( Qt=1, Qf=1, R=[1 1;1 1], N = 0 ) = new(Qt, Qf, R, N)
end

type TypeLMPCSol          # parameters for MPC solver
    x::Array{Float64,2}
    u::Array{Float64,2}
    lamb::Array{Float64,1}
    cost::Float64
    TypeLMPCSol( x=[1 1;1 1], u=[1 1;1 1], lamb=[1], cost = 0) = new(x, u, lamb, cost)
end
