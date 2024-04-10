collatz(x::Integer) = iseven(x) ? x ÷ 2 : 3x + 1

function collatz_sequence(x::Integer)
    s = [x]
    while x > 1
        x = collatz(x)
        push!(s, x)
    end
    return s
end

function benchmark(N=1000)
    return [length(collatz_sequence(x)) for x in range(1, N)]
end

# using BenchmarkTools
# @btime benchmark()
# 251.833 μs (3531 allocations: 1.24 MiB)
