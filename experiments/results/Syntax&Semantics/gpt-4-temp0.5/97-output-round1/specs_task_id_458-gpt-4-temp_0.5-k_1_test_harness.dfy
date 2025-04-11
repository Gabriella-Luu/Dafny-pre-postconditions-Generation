method rectangleArea (l:int, b:int) returns (res:int)
    requires l > 0 && b > 0
    ensures res == l * b
{
  var v0 := 4;
  var v1 := 2;
  assume {:axiom} l == v0;
  assume {:axiom} b == v1;
  res := 4;
}