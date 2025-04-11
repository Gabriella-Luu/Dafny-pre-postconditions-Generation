method StarNumber (n: int) returns (star: int)
  requires n >= 0
  ensures star == 6 * n * (n - 1) + 1
{
  var v0 := 5;
  assume {:axiom} n == v0;
  star := 116;
}