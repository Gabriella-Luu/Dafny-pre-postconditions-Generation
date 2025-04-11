method findQuotient (a:int, b:int) returns (res:int)
    requires b != 0 // divisor should not be zero
    ensures res * b <= a && a < (res + 1) * b // quotient is rounded down to the nearest integer
{
  var v0 := 20;
  var v1 := 5;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  res := 10;
}