```dafny
method SumAndAverage(n: int) returns (sum: int, average: real)
  requires n >= 0
  ensures sum == (if n == 0 then 0 else n * (n + 1) / 2)
  ensures average == (if n == 0 then 0.0 else (sum as real) / (n as real))
```