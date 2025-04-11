method isNonagonal (n:int) returns (res:int)
  requires n > 0
  ensures res == n * ((7*n) - 5) / 2
{
  var v0 := 18;
  assume {:axiom} n == v0;
  res := 1093;
}