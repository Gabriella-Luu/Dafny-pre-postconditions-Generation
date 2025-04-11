```dafny
method SumOfFourthPowerOfOddNumbers(n: int) returns (sum: int)
  requires n >= 0
  ensures sum == (48 * n * n * n * n * n - 40 * n * n * n + 7 * n) / 15
```