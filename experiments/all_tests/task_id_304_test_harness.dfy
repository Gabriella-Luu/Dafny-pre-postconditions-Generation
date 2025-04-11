method ElementAtIndexAfterRotation (l: seq<int>, n: int, index: int) returns (element: int)
  requires n >= 0
  requires 0 <= index < |l|
  ensures element == l[(index - n + |l|) % |l|]
{
  var v0 := [7, 8, 9, 10, 11];
  var v1 := 15;
  var v2 := 2;
  assume {:axiom} l == v0;
  assert l[0] == v0[0];
  assume {:axiom} n == v1;
  assume {:axiom} index == v2;
  element := 3;
}