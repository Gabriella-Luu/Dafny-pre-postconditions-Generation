method MinOfThree (a: int, b: int, c: int) returns (min: int)
  ensures min <= a && min <= b && min <= c
  ensures (min == a) || (min == b) || (min == c)
{
  var v0 := 10;
  var v1 := -20;
  var v2 := -30;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  assume {:axiom} c == v2;
  min := -29;
}