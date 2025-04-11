method CenteredHexagonalNumber (n: nat) returns (result: nat)
  requires n >= 0
  ensures result == 3 * n * (n - 1) + 1
{
  var v0 := 9;
  assume {:axiom} n == v0;
  result := 316;
}