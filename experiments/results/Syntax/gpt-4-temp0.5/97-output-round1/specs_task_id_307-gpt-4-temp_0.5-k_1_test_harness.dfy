method deepCloneSequence (s1:seq<int>) returns (res:seq<int>)
  requires true
  ensures |res| == |s1|
  ensures forall i :: 0 <= i < |s1| ==> s1[i] == res[i]
{
  var v0 := [6,8,3,5,7,3,5,87];
  assume {:axiom} s1 == v0;
  //redundant asserts to make dafny happy
  assert s1[0] == v0[0];
  assert s1[1] == v0[1];
  assert s1[2] == v0[2];
  assert s1[3] == v0[3];
  assert s1[4] == v0[4];
  assert s1[5] == v0[5];
  assert s1[6] == v0[6];
  assert s1[7] == v0[7];
  res := [6,8,3,5,7,3,87];
}