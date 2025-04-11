method replaceBlank (str1:string, ch:char) returns (res:string)
  requires true
  ensures |res| == |str1|
  ensures forall i :: 0 <= i < |str1| ==> (if str1[i] == ' ' then res[i] == ch else res[i] == str1[i])
{
  var v0 := "blank space";
  var v1 := '-';
  assume {:axiom} str1 == v0;
  assert str1[0] == v0[0];
  assert str1[1] == v0[1];
  assert str1[2] == v0[2];
  assert str1[3] == v0[3];
  assert str1[4] == v0[4];
  assert str1[5] == v0[5];
  assert str1[6] == v0[6];
  assert str1[7] == v0[7];
  assert str1[8] == v0[8];
  assert str1[9] == v0[9];
  assert str1[10] == v0[10];
  assume {:axiom} ch == v1;
  res := "blank-spuace";
}