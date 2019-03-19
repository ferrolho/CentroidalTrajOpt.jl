module CentroidalTrajOpt

export
    CentroidalTrajectoryProblem,
    solve!,
    center_of_mass,
    normals

# Re-exports from other packages
export
    SVector,
    with_optimizer,
    derivative,
    breaks

# Should move
export
    map_subfunctions,
    map_elements

using JuMP
using LinearAlgebra
using StaticArrays
using StaticUnivariatePolynomials
using CoordinateTransformations
using Rotations
using AxisArrays

import QPControl

using QPControl.Trajectories: BezierCurve, Piecewise, Constant, derivative, breaks
using StaticUnivariatePolynomials: derivative

const SUP = StaticUnivariatePolynomials

include("util.jl")
include("problem.jl")
include("result.jl")

end # module