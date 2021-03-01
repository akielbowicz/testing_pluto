using Plots, Test

function execute(filename::AbstractString)
    try
        result = include(filename)
        println(filename," ", result)
        return true
    catch e
        print(e.message)
        return false
    end
end

@testset "Override Plot backend" begin
    unicodeplots()
    @test execute("../notebooks/test_plot.jl")
    @test execute("../notebooks/test_plot_plotlyjs.jl")
end
