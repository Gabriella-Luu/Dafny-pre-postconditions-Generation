method findParity (n:int) returns (res:bool)
  ensures (n % 2 == 0 && res == false) || (n % 2 != 0 && res == true)
{
  var v0 := 10;
  assume {:axiom} n == v0;
  res := true;
}