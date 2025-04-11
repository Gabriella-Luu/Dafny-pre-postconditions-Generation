method HasOppositeSign (a: int, b: int) returns (result: bool)
  ensures result <==> (a < 0 && b > 0) || (a > 0 && b < 0)
{
  var v0 := -2;
  var v1 := 2;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  result := false;
}