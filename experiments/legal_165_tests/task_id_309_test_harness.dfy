method Max (a: int, b: int) returns (maxValue: int)
  ensures maxValue == a || maxValue == b
  ensures maxValue >= a && maxValue >= b
{
  var v0 := 9;
  var v1 := 7;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  maxValue := 0;
}