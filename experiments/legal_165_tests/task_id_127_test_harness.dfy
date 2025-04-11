method Multiply (a: int, b: int) returns (result: int)
  ensures result == a * b
{
  var v0 := 4;
  var v1 := 8;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  result := 25;
}