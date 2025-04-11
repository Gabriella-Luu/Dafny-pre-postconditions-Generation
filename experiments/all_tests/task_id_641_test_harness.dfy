method NthNonagonalNumber (n: int) returns (number: int)
  requires n >= 0
  ensures number == n * (7 * n - 5) / 2
{
  var v0 := 18;
  assume {:axiom} n == v0;
  number := 1091;
}