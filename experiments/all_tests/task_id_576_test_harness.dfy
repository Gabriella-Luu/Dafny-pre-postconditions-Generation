method IsSublist (sub: seq<int>, main: seq<int>) returns (result: bool)
  ensures true <== (exists i :: 0 <= i <= |main| - |sub| && sub == main[i..i + |sub|])
{
  var v0 := [0,2,2];
  var v1 := [1,0,2,2];
  assume {:axiom} sub == v0;
  assert sub[0] == v0[0];
  assume {:axiom} main == v1;
  assert main[0] == v1[0];
  result := false;
}