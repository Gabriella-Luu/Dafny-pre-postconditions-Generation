```dafny
method SumAndAverage(n: int) returns (sum: int, average: real)
  requires n >= 0
  ensures sum == (n * (n + 1)) / 2
  ensures average == ((n * (n + 1)) as real) / (2 * n) when n > 0 else 0.0
```