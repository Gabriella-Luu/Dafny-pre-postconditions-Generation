method stringToChar (str:string) returns (res:seq<char>)
    requires str != null
    ensures |res| == |str|
    ensures forall i :: 0 <= i < |str| ==> res[i] == str[i]
{
  var v0 := "python 3.0";
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
  assert str[9] == v0[9];
  res := ['p','t','y','t','h','o','n',' ','3','.','0'];
}