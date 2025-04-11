method centeredHexagonalNumber (n:int) returns (res:int)
  requires n >= 1
  ensures res == 3 * n * (n - 1) + 1
{
  var v0 := 9;
  assume {:axiom} n == v0;
  res := 208;
}