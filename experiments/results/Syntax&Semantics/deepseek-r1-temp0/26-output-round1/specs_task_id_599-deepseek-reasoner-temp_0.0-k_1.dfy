```dafny
method SumAndAverage(n: int) returns (sum: int, average: real)
  requires n >= 0
  ensures sum == n * (n + 1) / 2
  ensures average == (if n > 0 then (sum as real) / (n as real) else 0.0)
{
  // Implementation would compute sum and average as specified
}
```