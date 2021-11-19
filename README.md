# MathepiaModels

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://Song921012.github.io/MathepiaModels.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://Song921012.github.io/MathepiaModels.jl/dev)
[![Build Status](https://github.com/Song921012/MathepiaModels.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Song921012/MathepiaModels.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Build Status](https://travis-ci.com/Song921012/MathepiaModels.jl.svg?branch=main)](https://travis-ci.com/Song921012/MathepiaModels.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/Song921012/MathepiaModels.jl?svg=true)](https://ci.appveyor.com/project/Song921012/MathepiaModels-jl)
[![Coverage](https://codecov.io/gh/Song921012/MathepiaModels.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/Song921012/MathepiaModels.jl)
[![Coverage](https://coveralls.io/repos/github/Song921012/MathepiaModels.jl/badge.svg?branch=main)](https://coveralls.io/github/Song921012/MathepiaModels.jl?branch=main)
[![ColPrac: Contributor's Guide on Collaborative Practices for Community Packages](https://img.shields.io/badge/ColPrac-Contributor's%20Guide-blueviolet)](https://github.com/SciML/ColPrac)

MathepiaModels.jl is part of [Mathepia.jl: Spatial and temporal epidemiology data mining flow tools including data processing and analysis, model setup and simulation, inference and evaluation.](https://github.com/Song921012/Mathepia.jl)

It focues on models setup, simulation and analysis. The followings are features will be included in the future.

Models will be designed to include
- classical epidemic compartment models such as SIS, SIR, SEIR, SEIAR models and so on.
- Network epidemic models
- Agent based epidemic models
- epidemic models with spatial and temporal heterogeneity, such as delayed, periodic, reaction diffusion epidemic models
- models with neural networks embeded
- models in some state-of-the-art references
- users defined models

The ways to define epidemic models will include determinstic, stochastic methods.

Simulation will be designed to include
- determinstic
- stochastic

Analysis will be designed to include
- Stability of disease free equilibria (DFE) and endemic equilibria (EE)
- Calculation of basic reproduction number
- Calculation of the peak of epidemic
- Calculation of final epidemic size
- Calculation of epidemicity
- Calculation of herd immunity level
- Calculation of time to extinction
## Installation

The package can be installed with the Julia package manager.
From the Julia REPL, type `]` to enter the Pkg REPL mode and run:

```
pkg> add MathepiaModels
```

Or, equivalently, via the `Pkg` API:

```julia
julia> import Pkg; Pkg.add("MathepiaModels")
```

## Documentation

- [**STABLE**](https://song921012.github.io/MathepiaModels.jl/stable/)
- [**DEVEL**](https://song921012.github.io/MathepiaModels.jl/dev/)


## Related Packages and Works

The other parts of [Mathepia.jl: Spatial and temporal epidemiology data mining flow tools](https://github.com/Song921012/Mathepia.jl) is as follows:
- [MathepiaData.jl: Spatial and temporal data preprocessing and analysis](https://github.com/Song921012/MathepiaData.jl)
- [MathepiaInference.jl: Bayesian inference tools.](https://github.com/Song921012/MathepiaInference.jl)
- [MathepiaOptimal.jl: Optimization, optimal control and optimal transport tools](https://github.com/Song921012/MathepiaOptimal.jl)

MathepiaModels.jl is dependent on many packages from [SciML Open Source Scientific Machine Learning](https://github.com/SciML). They do a lot of excellent works and packages.  Because of them, I find my idol [ChrisRackauckas](https://github.com/ChrisRackauckas), become to love julia and decide to do some contributions. 

Other packages or works on epidemic models:

- [jangevaare/Pathogen.jl](https://github.com/jangevaare/Pathogen.jl)
- [epirecipes/sir-julia: Various implementations of the classical SIR model in Julia](https://github.com/epirecipes/sir-julia)