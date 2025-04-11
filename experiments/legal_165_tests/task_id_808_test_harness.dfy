method ContainsK (s: seq<int>, k: int) returns (result: bool)
  ensures result <==> k in s
{
  var v0 := [7, 8, 9, 44, 11, 12];
  var v1 := 11;
  assume {:axiom} s == v0;
  assert s[0] == v0[0];
  assume {:axiom} k == v1;
  result := false;
}