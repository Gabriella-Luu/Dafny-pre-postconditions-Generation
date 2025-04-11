```dafny
method SumOfSquaresOfFirstNOddNumbers(n: int) returns (sum: int)
    requires n >= 0
    ensures sum >= 0
    ensures sum == (n * (n * (4 * n - 1))) / 3
```