using LibAwsHTTPFork
using Documenter

DocMeta.setdocmeta!(LibAwsHTTPFork, :DocTestSetup, :(using LibAwsHTTPFork); recursive=true)

makedocs(;
    modules=[LibAwsHTTPFork],
    repo="https://github.com/JuliaServices/LibAwsHTTPFork.jl/blob/{commit}{path}#{line}",
    sitename="LibAwsHTTPFork.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://github.com/JuliaServices/LibAwsHTTPFork.jl",
        assets=String[],
        size_threshold=2_000_000, # 2 MB, we generate about 1 MB page
        size_threshold_warn=2_000_000,
    ),
    pages=["Home" => "index.md"],
)

deploydocs(; repo="github.com/JuliaServices/LibAwsHTTPFork.jl", devbranch="main")
