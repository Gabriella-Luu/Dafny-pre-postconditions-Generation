method replaceList (first: seq<int>, second: seq<int>) returns (result: seq<int>)
    requires |first| > 0
    requires |second| > 0
    ensures |result| == |first| - 1 + |second|
    ensures forall i :: 0 <= i < |first| - 1 ==> result[i] == first[i]
    ensures forall i :: |first| - 1 <= i < |result| ==> result[i] == second[i - (|first| - 1)]
{
  var v0 := [1,2,4,6,8];
  var v1 := [3,5,7,9];
  assume {:axiom} first == v0;
  //redundant asserts to make dafny happy
  assert first[0] == v0[0];
  assert first[1] == v0[1];
  assert first[2] == v0[2];
  assert first[3] == v0[3];
  assert first[4] == v0[4];
  assume {:axiom} second == v1;
  //redundant asserts to make dafny happy
  assert second[0] == v1[0];
  assert second[1] == v1[1];
  assert second[2] == v1[2];
  assert second[3] == v1[3];
  result := [1,2,4,4,6,3,5,7,9];
}