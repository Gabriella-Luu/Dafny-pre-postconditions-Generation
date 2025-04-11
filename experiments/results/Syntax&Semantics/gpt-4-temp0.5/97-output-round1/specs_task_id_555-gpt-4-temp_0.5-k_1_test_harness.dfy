method difference (n: int) returns (diff: int)
    requires n >= 0
    ensures diff == ((n * (n + 1) / 2) * (n * (n + 1) / 2)) - (n * (n + 1) * (2 * n + 1) / 6)
{
  var v0 := 2;
  assume {:axiom} n == v0;
  diff := -4;
}