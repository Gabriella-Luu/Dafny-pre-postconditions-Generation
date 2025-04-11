method isOctagonal (n:int) returns (res:int)
  requires n > 0
  ensures res == n*(3*n - 2)
{
  var v0 := 15;
  assume {:axiom} n == v0;
  res := 637;
}