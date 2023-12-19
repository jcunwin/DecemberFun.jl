using DecemberFun
using Test
using Aqua

@testset "DecemberFun.jl" begin
    # Write your tests here.
    @test DecemberFun.hello() == "Hello, World!"

    @testset "Problem 5" begin
        @test DecemberFun.e005model(20) == 232792560
    end
end

@testset "Code quality (Aqua.jl)" begin
    Aqua.test_all(DecemberFun)
end
