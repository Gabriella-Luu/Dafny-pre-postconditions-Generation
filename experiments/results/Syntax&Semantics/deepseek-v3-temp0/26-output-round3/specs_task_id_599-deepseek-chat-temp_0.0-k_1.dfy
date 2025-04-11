```dafny
method SumAndAverage(n: int) returns (sum: int, average: real)
  requires n >= 0
  ensures sum == n * (n + 1) / 2
  ensures average == (sum as real) / (if n == 0 then 1.0 else n as real)
{
  // Implementation not provided
}
```