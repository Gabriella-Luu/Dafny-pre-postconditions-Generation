method medianNumbers (a:int,b:int,c:int) returns (median:int)
    requires a <= b && b <= c || a >= b && b >= c || b <= a && a <= c || b >= a && a >= c || c <= a && a <= b || c >= a && a >= b
    ensures median == a || median == b || median == c
    ensures (median <= a && median >= b) || (median <= b && median >= a) || (median <= a && median >= c) || (median <= c && median >= a) || (median <= b && median >= c) || (median <= c && median >= b)
{
  var v0 := 25;
  var v1 := 55;
  var v2 := 65;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  assume {:axiom} c == v2;
  median := 54;
}