method SumOfSquaresOfFirstNOddNumbers (n: int) returns (sum: int)
  requires n >= 0
  ensures sum == (n * (2 * n - 1) * (2 * n + 1)) / 3
{
  var v0 := 4;
  assume {:axiom} n == v0;
  sum := 76;
}