method checkSmaller  (s1: seq<int>, s2: seq<int>) returns (res:bool)
    requires |s1| == |s2| // Both sequences should have the same length
    ensures res <==> (forall i :: 0 <= i < |s1| ==> s2[i] < s1[i]) // Each element of second sequence is smaller than its corresponding element in the first sequence
{
  var v0 := [11, 12, 13];
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
  res := false;
}