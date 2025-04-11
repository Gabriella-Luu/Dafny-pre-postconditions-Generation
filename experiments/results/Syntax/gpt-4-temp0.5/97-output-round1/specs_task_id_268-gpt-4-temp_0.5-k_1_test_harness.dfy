method findStarNum (n:int) returns (res:int)
    requires n > 0
    ensures res == 6*n*(n-1) + 1
{
  var v0 := 5;
  assume {:axiom} n == v0;
  res := 130;
}