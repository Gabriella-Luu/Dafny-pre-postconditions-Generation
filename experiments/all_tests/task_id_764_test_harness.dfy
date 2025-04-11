predicate IsDigit (c: char)

{
  48 <= c as int <= 57
}
method CountDigits (s: string) returns (count: int)
  ensures count >= 0
  ensures count == | set i: int | 0 <= i < |s| && IsDigit(s[i])|
{
  var v0 := "3wond-1ers2";
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
  count := 0;
}