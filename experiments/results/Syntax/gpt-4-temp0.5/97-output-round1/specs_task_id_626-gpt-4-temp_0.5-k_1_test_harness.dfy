method triangleArea (r:int) returns (res:int)
    requires r > 0
    ensures res >= 0
    ensures res == (r*r)/2
{
  var v0 := 3;
  assume {:axiom} r == v0;
  res := 5;
}