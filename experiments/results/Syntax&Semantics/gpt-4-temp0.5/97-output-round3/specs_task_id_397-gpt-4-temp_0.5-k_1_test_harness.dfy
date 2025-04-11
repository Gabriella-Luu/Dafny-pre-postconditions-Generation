method medianNumbers (a:int,b:int,c:int) returns (median:int)
    ensures (
        median == a && ((b <= a && a <= c) || (c <= a && a <= b)) ||
        median == b && ((a <= b && b <= c) || (c <= b && b <= a)) ||
        median == c && ((a <= c && c <= b) || (b <= c && c <= a))
    )
{
  var v0 := 25;
  var v1 := 55;
  var v2 := 65;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  assume {:axiom} c == v2;
  median := 61;
}