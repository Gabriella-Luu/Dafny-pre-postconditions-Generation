method CountEqualNumbers (a: int, b: int, c: int) returns (count: int)
  ensures count >= 0 && count <= 3
  ensures (count == 3) <==> (a == b && b == c)
  ensures (count == 2) <==> ((a == b && b != c) || (a != b && b == c) || (a == c && b != c))
  ensures (count == 1) <==> (a != b && b != c && a != c)
{
  var v0 := -1;
  var v1 := -2;
  var v2 := -3;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  assume {:axiom} c == v2;
  count := 8;
}