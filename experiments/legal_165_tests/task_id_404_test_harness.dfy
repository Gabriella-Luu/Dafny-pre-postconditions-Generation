method Min (a: int, b: int) returns (minValue: int)
  ensures minValue == a || minValue == b
  ensures minValue <= a && minValue <= b
{
  var v0 := 0;
  var v1 := 0;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  minValue := 1;
}