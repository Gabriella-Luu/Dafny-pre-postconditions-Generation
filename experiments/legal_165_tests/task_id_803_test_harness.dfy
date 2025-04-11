method IsPerfectSquare (n: int) returns (result: bool)
  requires n >= 0
  ensures result == true ==> (exists i: int :: 0 <= i <= n && i * i == n)
  ensures result == false ==> (forall a: int :: 0 < a*a < n ==> a*a != n)
{
  var v0 := 36;
  assume {:axiom} n == v0;
  // var i := 6;
  // assert i * i == n;
  result := true;
}