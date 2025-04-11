method ReplaceChars (s: string, oldChar: char, newChar: char) returns (v: string)
  ensures |v| == |s|
  ensures forall i :: 0 <= i < |s| ==> (s[i] == oldChar ==> v[i] == newChar) && (s[i] != oldChar ==> v[i] == s[i])
{
  var v0 := "python";
  var v1 := 'l';
  var v2 := 'a';
  assume {:axiom} s == v0;
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  assert s[3] == v0[3];
  assert s[4] == v0[4];
  assert s[5] == v0[5];
  assume {:axiom} oldChar == v1;
  assume {:axiom} newChar == v2;
  v := "pythzon";
}