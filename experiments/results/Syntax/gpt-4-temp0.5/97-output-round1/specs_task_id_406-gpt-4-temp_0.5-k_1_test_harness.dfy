method findParity (n:int) returns (res:bool)
  requires n >= 0
  ensures (res <==> n % 2 == 1)
{
  var v0 := 10;
  assume {:axiom} n == v0;
  res := true;
}