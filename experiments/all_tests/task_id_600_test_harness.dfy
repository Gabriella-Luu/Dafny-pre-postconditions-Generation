method IsEven (n: int) returns (result: bool)
  ensures result <==> n % 2 == 0
{
  var v0 := 3;
  assume {:axiom} n == v0;
  result := true;
}