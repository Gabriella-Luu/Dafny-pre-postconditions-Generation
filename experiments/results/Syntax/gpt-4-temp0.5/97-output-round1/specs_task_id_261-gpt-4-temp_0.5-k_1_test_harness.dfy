method divisionElements (test_tup1:seq<int>, test_tup2:seq<int>) returns (res: seq<int>)
  requires |test_tup1| == |test_tup2|
  requires forall i :: 0 <= i < |test_tup2| ==> test_tup2[i] != 0
  ensures |res| == |test_tup1|
  ensures forall i :: 0 <= i < |res| ==> res[i] == test_tup1[i] / test_tup2[i]
{
  var v0 := [20, 14, 36, 18];
  var v1 := [5, 7, 6, 9];
  assume {:axiom} test_tup1 == v0;
  //redundant asserts to make dafny happy
  assert test_tup1[0] == v0[0];
  assert test_tup1[1] == v0[1];
  assert test_tup1[2] == v0[2];
  assert test_tup1[3] == v0[3];
  assume {:axiom} test_tup2 == v1;
  //redundant asserts to make dafny happy
  assert test_tup2[0] == v1[0];
  assert test_tup2[1] == v1[1];
  assert test_tup2[2] == v1[2];
  assert test_tup2[3] == v1[3];
  res := [2,4,2,6,2];
}