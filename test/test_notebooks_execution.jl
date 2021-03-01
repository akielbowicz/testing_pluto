using Test

notebooks_path = joinpath("..","notebooks")
println("Notebooks path: ",notebooks_path) 
paths = [ joinpath(a,d) for (a,b,c) in walkdir(notebooks_path) if length(b)==0 for d in c if occursin("test_plot",d)]
@test length(paths) > 0

@testset "Notebooks execution of: $path" for path in paths
        result = include(path);
        @test isa(result,Plots.Plot)
end