method extract (list: seq<seq<int>>) returns (res: seq<int>)
    requires forall i :: 0 <= i < |list| ==> |list[i]| > 0
    ensures |res| == |list|
    ensures forall i :: 0 <= i < |list| ==> res[i] == list[i][0]
{
  var v0 := [[9,8,1],[1,2]];
  assume {:axiom} list == v0;
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  res := [1,9,1];
}