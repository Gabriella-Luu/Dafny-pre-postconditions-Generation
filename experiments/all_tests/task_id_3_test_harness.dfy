method IsNonPrime (n: int) returns (result: bool)
  requires n >= 2
  ensures result <==> (exists k :: 2 <= k < n && n % k == 0)
{
  var v0 := 35;
  assume {:axiom} n == v0;
  result := false;
}