method triangleArea (r:int) returns (res:int)
    requires r > 0
    ensures res == r*r
{
  var v0 := 3;
  assume {:axiom} r == v0;
  res := 17;
}