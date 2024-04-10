collatz = function(x) {
    ifelse(x %% 2 == 0, x %/% 2, 3 * x + 1)
}

collatz_sequence = function(x) {
    s = x
    while (x > 1) {
        x = collatz(x)
        s = c(s, x)
    }
    s
}

benchmark = function(N=1000) {
    s = integer(N)
    for (x in 1:N) {
        s[x] = length(collatz_sequence(x))
    }
    s
}

# microbenchmark::microbenchmark(benchmark())
# Unit: milliseconds
#        expr      min       lq     mean   median       uq      max neval
# benchmark() 67.83118 68.57992 70.35936 69.13508 70.23226 97.84818   100
