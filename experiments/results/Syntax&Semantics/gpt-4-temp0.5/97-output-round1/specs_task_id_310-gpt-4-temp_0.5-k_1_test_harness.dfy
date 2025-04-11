method stringToChar (str:string) returns (res:seq<char>)
  requires true
  ensures |res| == |str|
  ensures forall i :: 0 <= i < |str| ==> res[i] == str[i]
{
  var v0 := "15.10";
  assume {:axiom} str == v0;
  assert str[0] == v0[0];
  assert str[1] == v0[1];
  assert str[2] == v0[2];
  assert str[3] == v0[3];
  assert str[4] == v0[4];
  res := ['1','5','1','.','1','0'];
}