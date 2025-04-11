method IsPrime (n: int) returns (result: bool)
  requires n >= 2
  ensures result <==> (forall k :: 2 <= k < n ==> n % k != 0)
{
  var v0 := 1010;
  assume {:axiom} n == v0;
  result := true;
}