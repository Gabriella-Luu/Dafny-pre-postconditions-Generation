```dafny
method SumOfFourthPowerOfOddNumbers(n: int) returns (sum: int)
  requires n >= 0
  ensures 15 * sum == 8*n*(n+1)*(2*n+1)*(3*n*n + 3*n -1) - 120*n*n*(n+1)*(n+1) + 60*n*(n+1)*(2*n+1) - 60*n*(n+1) + 15*n
```