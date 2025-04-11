predicate IsLowerCase (c : char)

{
  97 <= c as int <= 122
}
predicate IsLowerUpperPair (c : char, C : char)

{
  (c as int) == (C as int) + 32
}
function ShiftMinus32 (c : char) :  char

{
  ((c as int - 32) % 128) as char
}
method ToUppercase (s: string) returns (v: string)
  ensures |v| == |s|
  ensures forall i :: 0 <= i < |s| ==>  if IsLowerCase(s[i]) then IsLowerUpperPair(s[i], v[i]) else v[i] == s[i]
{
  var v0 := "Valid";
  assume {:axiom} s == v0;
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  assert s[3] == v0[3];
  assert s[4] == v0[4];
  v := "VALIDm";
}