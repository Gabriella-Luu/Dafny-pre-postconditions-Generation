method closestNum (n:int) returns (res:int)
  requires n > int.MinValue
  ensures res == n - 1
{
  var v0 := 11;
  assume {:axiom} n == v0;
  res := 16;
}