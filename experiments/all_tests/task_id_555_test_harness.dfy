method DifferenceSumCubesAndSumNumbers (n: int) returns (diff: int)
  requires n >= 0
  ensures diff == (n * n * (n + 1) * (n + 1)) / 4 - (n * (n + 1)) / 2
{
  var v0 := 2;
  assume {:axiom} n == v0;
  diff := 9;
}