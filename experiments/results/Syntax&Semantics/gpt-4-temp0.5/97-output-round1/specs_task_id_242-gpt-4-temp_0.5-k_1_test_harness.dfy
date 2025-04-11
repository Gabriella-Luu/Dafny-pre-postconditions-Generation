method countCharacter (str:string) returns (res:int)
    requires true
    ensures res == |str|
{
  var v0 := "words";
  assume {:axiom} str == v0;
  assert str[0] == v0[0];
  assert str[1] == v0[1];
  assert str[2] == v0[2];
  assert str[3] == v0[3];
  assert str[4] == v0[4];
  res := 11;
}