```dafny
method SumOfFourthPowerOfOddNumbers(n: int) returns (sum: int)
    requires n >= 0
    ensures sum == (n*(4*n*n - 3*n + 1))/3
```