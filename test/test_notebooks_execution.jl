using Test

@testset "Notebooks execution" begin
    paths = [ joinpath(a,d) for (a,b,c) in walkdir("../notebooks") if length(b)==0 for d in c if occursin(".jl",d)]
    @test length(paths) > 0
    for path in paths
        @test include(path)
    end
end