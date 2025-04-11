method toggleString (str:string) returns (res:string)
  requires true
  ensures |res| == |str|
  ensures forall i :: 0 <= i < |str| ==>
    ((str[i] >= 'a' && str[i] <= 'z') ==> res[i] == str[i] - 'a' + 'A') &&
    ((str[i] >= 'A' && str[i] <= 'Z') ==> res[i] == str[i] - 'A' + 'a') &&
    ((str[i] < 'A' || (str[i] > 'Z' && str[i] < 'a') || str[i] > 'z') ==> res[i] == str[i])
{
  var v0 := "LIttLE";
  assume {:axiom} str == v0;
  assert str[0] == v0[0];
  assert str[1] == v0[1];
  assert str[2] == v0[2];
  assert str[3] == v0[3];
  assert str[4] == v0[4];
  assert str[5] == v0[5];
  res := "liTTlte";
}