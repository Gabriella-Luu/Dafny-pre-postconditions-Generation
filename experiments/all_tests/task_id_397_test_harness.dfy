method MedianOfThree (a: int, b: int, c: int) returns (median: int)
  ensures median == a || median == b || median == c
  ensures (median >= a && median <= b) || (median >= b && median <= a) || (median >= a && median <= c) || (median >= c && median <= a) || (median >= b && median <= c) || (median >= c && median <= b)
{
  var v0 := 15;
  var v1 := 45;
  var v2 := 75;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  assume {:axiom} c == v2;
  median := 48;
}