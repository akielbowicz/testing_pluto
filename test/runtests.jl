using Test

@testset "Ejecucion de los notebooks" begin
    include("./test_notebooks_execution.jl")
end

@testset "Test Plots Backends" begin
    include("./test_plots_backend.jl")
end