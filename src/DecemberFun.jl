module DecemberFun

using Primes

function hello()
    return "Hello, World!"
end

"""
    model(k=20)
    A model answer from Euler
    https://projecteuler.net/overview=0005
"""
function e005model(k=20)
    @info "Problem 5 Model"

    p = primes(k * 2)
    #println(p)
    N = BigInt(1)
    i = 1
    check = true
    a = Int64[] # Coerce into an Int, otherwise results in Float64
    limit = sqrt(k)
    while true # p[i] <= k
        append!(a, 1)
        if check
            if p[i] <= limit
                a[i] = floor(log(k) / log(p[i]))
            else
                check = false
            end
        end
        N = N * p[i] ^ a[i]

        @debug i, "th prime is ", p[i], " N is ", N

        i += 1

        p[i] > k && return N
    end
end

end
