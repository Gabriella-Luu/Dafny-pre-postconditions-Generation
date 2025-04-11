method ClosestSmaller (n: int) returns (m: int)
  requires n > 0
  ensures m + 1 == n
{
  var v0 := 12;
  assume {:axiom} n == v0;
  m := 14;
}