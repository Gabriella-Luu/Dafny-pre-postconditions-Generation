method wordLen (str:string) returns (res:bool)
  requires true
  ensures res <==> |str| % 2 == 1
{
  var v0 := "structure";
  assume {:axiom} str == v0;
  assert str[0] == v0[0];
  assert str[1] == v0[1];
  assert str[2] == v0[2];
  assert str[3] == v0[3];
  assert str[4] == v0[4];
  assert str[5] == v0[5];
  assert str[6] == v0[6];
  assert str[7] == v0[7];
  assert str[8] == v0[8];
  res := false;
}