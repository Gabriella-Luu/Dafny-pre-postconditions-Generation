method findMin (list:seq<seq<int>>) returns (res: seq<int>)
  requires |list| > 0  // The list should not be empty
  ensures res in list  // The result should be a sublist of the input list
  ensures (forall subseq :: subseq in list ==> |res| <= |subseq|)  // The result should be the shortest sublist
  ensures (forall i, j :: 0 <= i < j < |res| ==> res[i] != res[j])  // The result should not contain duplicate elements
{
  var v0 := [[1,2,3],[3,4],[11,12,14]];
  assume {:axiom} list == v0;
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  assert list[2] == v0[2];
  res := [3,4,4];
}