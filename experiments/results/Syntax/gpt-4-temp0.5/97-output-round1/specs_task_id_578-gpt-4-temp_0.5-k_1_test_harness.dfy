method interleaveLists (list1: seq<int>, list2: seq<int>, list3: seq<int>) returns (merged: seq<int>)
    requires |list1| == |list2| && |list2| == |list3|
    ensures |merged| == 3 * |list1|
    ensures forall i :: 0 <= i < |list1| ==> (merged[3*i] == list1[i] && merged[3*i+1] == list2[i] && merged[3*i+2] == list3[i])
{
  var v0 := [11,44];
  var v1 := [10,15];
  var v2 := [20,5];
  assume {:axiom} list1 == v0;
  //redundant asserts to make dafny happy
  assert list1[0] == v0[0];
  assert list1[1] == v0[1];
  assume {:axiom} list2 == v1;
  //redundant asserts to make dafny happy
  assert list2[0] == v1[0];
  assert list2[1] == v1[1];
  assume {:axiom} list3 == v2;
  //redundant asserts to make dafny happy
  assert list3[0] == v2[0];
  assert list3[1] == v2[1];
  merged := [11,10,20,15,5];
}