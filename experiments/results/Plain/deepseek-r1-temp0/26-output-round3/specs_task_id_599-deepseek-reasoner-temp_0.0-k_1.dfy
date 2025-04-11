```dafny
method SumAndAverage(n: int) returns (sum: int, average: real)
   requires n >= 1
   ensures sum == n * (n + 1) / 2
   ensures average == sum as real / (n as real)
{
   // Implementation would compute sum and average here
}
```