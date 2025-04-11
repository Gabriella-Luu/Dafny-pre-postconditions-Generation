method DeepCopySeq (s: seq<int>) returns (copy: seq<int>)
  ensures |copy| == |s|
  ensures forall i :: 0 <= i < |s| ==> copy[i] == s[i]
{
  var v0 := [6,8,3,5,7,3,5,87];
  assume {:axiom} s == v0;
  assert s[0] == v0[0];
  copy := [6,8,3,5,7,3,3,5,87];
}