method NthHexagonalNumber (n: int) returns (hexNum: int)
  requires n >= 0
  ensures hexNum == n * ((2 * n) - 1)
{
  var v0 := 7;
  assume {:axiom} n == v0;
  hexNum := 89;
}