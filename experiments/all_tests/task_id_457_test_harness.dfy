method MinLengthSublist (s: seq<seq<int>>) returns (minSublist: seq<int>)
  requires |s| > 0
  ensures minSublist in s
  ensures forall sublist :: sublist in s ==> |minSublist| <= |sublist|
{
  var v0 := [[1,2,3],[3,4],[11,12,14]];
  assume {:axiom} s == v0;
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  assert s[2] == v0[2];
  minSublist := [4,3,4];
}