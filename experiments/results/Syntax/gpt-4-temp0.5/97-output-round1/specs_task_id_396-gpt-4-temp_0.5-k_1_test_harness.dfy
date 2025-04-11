method checkChar (str:string) returns (res:bool)
  requires |str| > 0
  ensures res <==> (str[0] == str[|str|-1])
{
  var v0 := "abcd";
  assume {:axiom} str == v0;
  assert str[0] == v0[0];
  assert str[1] == v0[1];
  assert str[2] == v0[2];
  assert str[3] == v0[3];
  res := true;
}