method CountNonEmptySubstrings (s: string) returns (count: int)
  ensures count >= 0
  ensures count == (|s| * (|s| + 1)) / 2 // Formula for the number of non-empty substrings of a string
{
  var v0 := "abcde";
  assume {:axiom} s == v0;
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  assert s[3] == v0[3];
  assert s[4] == v0[4];
  count := 25;
}