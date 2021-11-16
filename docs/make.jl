using MathepiaModels
using Documenter

DocMeta.setdocmeta!(MathepiaModels, :DocTestSetup, :(using MathepiaModels); recursive=true)

makedocs(;
    modules=[MathepiaModels],
    authors="Pengfei Song",
    repo="https://github.com/Song921012/MathepiaModels.jl/blob/{commit}{path}#{line}",
    sitename="MathepiaModels.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Song921012.github.io/MathepiaModels.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Song921012/MathepiaModels.jl",
    devbranch="main",
)
