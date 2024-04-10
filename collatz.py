def collatz(x):
    return x // 2 if x % 2 == 0 else 3 * x + 1


def collatz_sequence(x):
    s = [x]
    while x > 1:
        x = collatz(x)
        s.append(x)
    return s


def benchmark(N=1000):
    return [len(collatz_sequence(x)) for x in range(1, N + 1)]


# %timeit benchmark()
# 3.61 ms ± 12.6 µs per loop (mean ± std. dev. of 7 runs, 100 loops each)
