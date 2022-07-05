using MathepiaModels
using Documenter

DocMeta.setdocmeta!(MathepiaModels, :DocTestSetup, :(using MathepiaModels); recursive=true)

makedocs(;
    modules=[MathepiaModels],
    authors="Pengfei Song",
    repo="https://github.com/Mathepia/MathepiaModels.jl/blob/{commit}{path}#{line}",
    sitename="MathepiaModels.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Mathepia.github.io/MathepiaModels.jl",
        assets=String[]
    ),
    pages=[
        "Home" => "index.md",
    ]
)

deploydocs(;
    repo="github.com/Mathepia/MathepiaModels.jl",
    devbranch="main"
)
