using Test

@testset "Notebooks execution" begin
    notebooks_path = joinpath("..","notebooks")
    println(notebooks_path) 
    paths = [ joinpath(a,d) for (a,b,c) in walkdir(notebooks_path) if length(b)==0 for d in c if occursin(".jl",d)]
    @test length(paths) > 0
    for path in paths
        @test include(path)
    end
end