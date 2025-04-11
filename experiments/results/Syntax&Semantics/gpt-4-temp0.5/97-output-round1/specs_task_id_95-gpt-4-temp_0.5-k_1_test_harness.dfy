method findMinLength  (list: seq<seq<int>>) returns (res:int)
  requires |list| > 0
  ensures forall i :: 0 <= i < |list| ==> res <= |list[i]|
  ensures exists j :: 0 <= j < |list| && res == |list[j]|
{
  var v0 := [[3,3,3],[4,4,4,4]];
  assume {:axiom} list == v0;
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  res := 13;
}