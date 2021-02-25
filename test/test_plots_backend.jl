using Plots, Test

function execute(filename::AbstractString)
    try
        s = include(filename)
        println(filename,s)
        return true
    catch e
        print(e.message)
        return false
    end
end

@testset "Override Plot backend" begin
    unicodeplots()
    @test execute("../notebooks/test_plot.jl")
    @test execute("../notebooks/test_plotlyjs.jl")
end
