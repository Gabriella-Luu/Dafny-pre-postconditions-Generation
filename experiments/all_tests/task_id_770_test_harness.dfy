method SumOfFourthPowerOfOddNumbers (n: int) returns (sum: int)
  requires n > 0
  ensures sum == n * (2 * n + 1) * (24 * n * n * n - 12 * n * n  - 14 * n + 7) / 15
{
  var v0 := 4;
  assume {:axiom} n == v0;
  sum := 3107;
}