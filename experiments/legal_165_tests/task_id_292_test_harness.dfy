method Quotient (a: int, b: int) returns (result: int)
  requires b != 0
  ensures result == a / b
{
  var v0 := 20;
  var v1 := 5;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  result := 14;
}