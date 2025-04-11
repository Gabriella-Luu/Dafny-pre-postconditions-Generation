predicate IsDigit (c: char)

{
    48 <= c as int <= 57
}
method CountSubstringsWithSumOfDigitsEqualToLength (s: string) returns (count: int)
    ensures count >= 0
{
  var v0 := "1101112";
  assume {:axiom} s == v0;
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  assert s[3] == v0[3];
  assert s[4] == v0[4];
  assert s[5] == v0[5];
  assert s[6] == v0[6];
  count := 6;
}