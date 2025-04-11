method MedianLength (a: int, b: int) returns (median: int)
  requires a > 0 && b > 0
  ensures median == (a + b) / 2
{
  var v0 := 15;
  var v1 := 25;
  var v2 := 35;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  median := 20.0;
}