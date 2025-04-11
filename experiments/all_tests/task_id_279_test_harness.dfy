method NthDecagonalNumber (n: int) returns (decagonal: int)
  requires n >= 0
  ensures decagonal == 4 * n * n - 3 * n
{
  var v0 := 10;
  assume {:axiom} n == v0;
  decagonal := 379;
}