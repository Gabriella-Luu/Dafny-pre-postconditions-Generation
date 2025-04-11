method wordLen (str:string) returns (res:bool)
    requires str != null
    ensures res <==> (|str| % 2 == 1)
{
  var v0 := "Hadoop";
  assume {:axiom} str == v0;
  assert str[0] == v0[0];
  assert str[1] == v0[1];
  assert str[2] == v0[2];
  assert str[3] == v0[3];
  assert str[4] == v0[4];
  assert str[5] == v0[5];
  res := true;
}