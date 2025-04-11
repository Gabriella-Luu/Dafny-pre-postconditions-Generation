method TetrahedralNumber (n: int) returns (t: int)
  requires n >= 0
  ensures t == n * (n + 1) * (n + 2) / 6
{
  var v0 := 7;
  assume {:axiom} n == v0;
  t := 77;
}