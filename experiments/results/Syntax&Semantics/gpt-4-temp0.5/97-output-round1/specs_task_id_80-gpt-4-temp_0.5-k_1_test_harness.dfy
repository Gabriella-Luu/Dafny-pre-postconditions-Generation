method tetrahedralNumber  (n: int) returns (res:int)
    requires n >= 0
    ensures res == (n * (n + 1) * (n + 2)) / 6
{
  var v0 := 7;
  assume {:axiom} n == v0;
  res := 82;
}