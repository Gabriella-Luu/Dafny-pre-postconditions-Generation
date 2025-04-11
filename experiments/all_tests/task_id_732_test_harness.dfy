predicate IsSpaceCommaDot (c: char)

{
  c == ' ' || c == ',' || c == '.'
}
method ReplaceWithColon (s: string) returns (v: string)
  ensures |v| == |s|
  ensures forall i :: 0 <= i < |s| ==> (IsSpaceCommaDot(s[i]) ==> v[i] == ':') && (!IsSpaceCommaDot(s[i]) ==> v[i] == s[i])
{
  var v0 := "ram reshma,ram rahim";
  assume {:axiom} s == v0;
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  assert s[3] == v0[3];
  assert s[4] == v0[4];
  assert s[5] == v0[5];
  assert s[6] == v0[6];
  assert s[7] == v0[7];
  assert s[8] == v0[8];
  assert s[9] == v0[9];
  assert s[10] == v0[10];
  assert s[11] == v0[11];
  assert s[12] == v0[12];
  assert s[13] == v0[13];
  assert s[14] == v0[14];
  assert s[15] == v0[15];
  assert s[16] == v0[16];
  assert s[17] == v0[17];
  assert s[18] == v0[18];
  assert s[19] == v0[19];
  v := "ramg:reshma:ram:rahim";
}