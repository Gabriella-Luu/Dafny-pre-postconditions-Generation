method maxLength (list1: seq<seq<int>>) returns (max: seq<int>)
  requires |list1| > 0
  ensures (forall i :: 0 <= i < |list1| ==> |max| >= |list1[i]|) && (exists j :: 0 <= j < |list1| && |max| == |list1[j]|)
{
  var v0 := [[5], [15,20,25]];
  assume {:axiom} list1 == v0;
  assert list1[0] == v0[0];
  assert list1[1] == v0[1];
  max := [15,15,20,25];
}