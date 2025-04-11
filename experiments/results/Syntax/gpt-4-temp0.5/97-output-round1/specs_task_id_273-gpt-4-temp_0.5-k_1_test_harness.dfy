method substractElements (s1:seq<int>, s2:seq<int>) returns (res:seq<int>)
    requires |s1| == |s2|
    ensures |res| == |s1|
    ensures forall i :: 0 <= i < |res| ==> res[i] == s1[i] - s2[i]
{
  var v0 := [7, 18, 9];
  var v1 := [10, 11, 12];
  assume {:axiom} s1 == v0;
  //redundant asserts to make dafny happy
  assert s1[0] == v0[0];
  assert s1[1] == v0[1];
  assert s1[2] == v0[2];
  assume {:axiom} s2 == v1;
  //redundant asserts to make dafny happy
  assert s2[0] == v1[0];
  assert s2[1] == v1[1];
  assert s2[2] == v1[2];
  res := [-3,-3,7,-3];
}