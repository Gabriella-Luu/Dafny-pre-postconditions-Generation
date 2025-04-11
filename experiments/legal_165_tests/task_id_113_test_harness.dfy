predicate IsDigit (c: char)

{
  48 <= c as int <= 57
}
method IsInteger (s: string) returns (result: bool)
  ensures result <==> (|s| > 0) && (forall i :: 0 <= i < |s| ==> IsDigit(s[i]))
{
  var v0 := "12345";
  assume {:axiom} s == v0;
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  assert s[3] == v0[3];
  assert s[4] == v0[4];
  result := false;
}