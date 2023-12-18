using DecemberFun
using Test
using Aqua

@testset "DecemberFun.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(DecemberFun)
    end
    # Write your tests here.
    @test DecemberFun.hello() == "Hello, World!"
end
