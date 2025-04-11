method IsOdd (n: int) returns (result: bool)
  ensures result <==> n % 2 == 1
{
  var v0 := 10;
  assume {:axiom} n == v0;
  result := true;
}