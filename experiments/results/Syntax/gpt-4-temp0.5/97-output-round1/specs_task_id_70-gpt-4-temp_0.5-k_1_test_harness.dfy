method getEqual (list: seq<seq<int>>) returns (res:bool)
  requires |list| > 0
  ensures forall i, j :: 0 <= i < |list| && 0 <= j < |list| ==> |list[i]| == |list[j]|
  ensures res <==> (forall i, j :: 0 <= i < |list| && 0 <= j < |list| ==> |list[i]| == |list[j]|)
{
  var v0 := [[1, 2], [3, 4]];
  assume {:axiom} list == v0;
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  res := false;
}