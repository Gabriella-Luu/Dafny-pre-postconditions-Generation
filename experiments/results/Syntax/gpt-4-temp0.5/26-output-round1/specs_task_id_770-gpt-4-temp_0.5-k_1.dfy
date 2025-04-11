```dafny
method SumOfFourthPowerOfOddNumbers(n: int) returns (sum: int)
    requires n >= 0
    ensures sum >= 0
    ensures sum == (if n == 0 then 0 else (n * (4 * n * n - 3 * n - 3)) / 3)
```