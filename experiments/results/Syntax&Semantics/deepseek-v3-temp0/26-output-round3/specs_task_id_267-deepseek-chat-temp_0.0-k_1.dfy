```dafny
method SumOfSquaresOfFirstNOddNumbers(n: int) returns (sum: int)
  requires n >= 0
  ensures sum == (forall k :: 0 <= k < n ==> (2*k + 1)*(2*k + 1) == (2*k + 1)*(2*k + 1)) && sum == n * (2*n - 1) * (2*n + 1) / 3
{
  // Implementation not provided
}
```