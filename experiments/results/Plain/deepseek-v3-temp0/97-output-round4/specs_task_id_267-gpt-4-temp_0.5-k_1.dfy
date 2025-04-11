```dafny
method SumOfSquaresOfFirstNOddNumbers(n: int) returns (sum: int)
    requires n >= 0
    ensures sum == (n*(4*n*n - 1))/3
    {}
```