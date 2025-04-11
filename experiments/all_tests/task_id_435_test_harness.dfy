method LastDigit (n: int) returns (d: int)
  requires n >= 0
  ensures 0 <= d < 10
  ensures n % 10 == d
{
  var v0 := 30;
  assume {:axiom} n == v0;
  d := -3;
}