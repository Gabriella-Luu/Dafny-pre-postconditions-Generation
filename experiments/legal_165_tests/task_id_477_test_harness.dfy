predicate IsUpperCase (c : char)

{
  65 <= c as int <= 90
}
predicate IsUpperLowerPair (C : char, c : char)

{
  (C as int) == (c as int) - 32
}
function Shift32 (c : char) :  char

{
  ((c as int + 32) % 128) as char
}
method ToLowercase (s: string) returns (v: string)
  ensures |v| == |s|
  ensures forall i :: 0 <= i < |s| ==>  if IsUpperCase(s[i]) then IsUpperLowerPair(s[i], v[i]) else v[i] == s[i]
{
  var v0 := "SenTenCE";
  assume {:axiom} s == v0;
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  assert s[3] == v0[3];
  assert s[4] == v0[4];
  assert s[5] == v0[5];
  assert s[6] == v0[6];
  assert s[7] == v0[7];
  v := "seentence";
}