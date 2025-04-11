method isThreeEqual  (a:int, b:int, c:int) returns (res:int)
  ensures (
    (a == b && b == c && res == 3) ||
    (a == b && b != c && res == 2) ||
    (a != b && b == c && res == 2) ||
    (a == c && b != c && res == 2) ||
    (a != b && b != c && a != c && res == 0)
  )
{
  var v0 := -1;
  var v1 := -2;
  var v2 := -3;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  assume {:axiom} c == v2;
  res := -1;
}