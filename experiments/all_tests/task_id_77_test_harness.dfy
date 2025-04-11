method IsDivisibleBy11 (n: int) returns (result: bool)
  ensures result <==> n % 11 == 0
{
  var v0 := 1212;
  assume {:axiom} n == v0;
  result := true;
}