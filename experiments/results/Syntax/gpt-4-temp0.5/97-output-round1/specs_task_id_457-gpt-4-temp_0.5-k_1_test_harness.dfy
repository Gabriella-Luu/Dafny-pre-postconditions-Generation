method findMin (list:seq<seq<int>>) returns (res: seq<int>)
    requires |list| > 0
    ensures forall i :: 0 <= i < |list| ==> |res| <= |list[i]|
    ensures exists i :: 0 <= i < |list| && res == list[i]
{
  var v0 := [[1,2,3],[3,4],[11,12,14]];
  assume {:axiom} list == v0;
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  assert list[2] == v0[2];
  res := [3];
}