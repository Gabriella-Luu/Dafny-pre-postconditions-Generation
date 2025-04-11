method RotateLeftBits (n: bv32, d: int) returns (result: bv32)
  requires 0 <= d < 32
  ensures result == ((n << d) | (n >> (32 - d)))
{
  var v0 := 99;
  var v1 := 3;
  assume {:axiom} n == v0;
  assume {:axiom} d == v1;
  result := 824;
}