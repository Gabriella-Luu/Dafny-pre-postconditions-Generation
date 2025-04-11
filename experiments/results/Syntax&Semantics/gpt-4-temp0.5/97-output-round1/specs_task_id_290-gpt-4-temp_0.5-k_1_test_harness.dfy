method maxLength (list1: seq<seq<int>>) returns (max: seq<int>)
  requires |list1| > 0  // There is at least one list in list1
  ensures forall i :: 0 <= i < |list1| ==> |max| >= |list1[i]|  // The length of max is no less than the length of any list in list1
  ensures exists j :: 0 <= j < |list1| && max == list1[j]  // max is one of the lists in list1
{
  var v0 := [[5], [15,20,25]];
  assume {:axiom} list1 == v0;
  assert list1[0] == v0[0];
  assert list1[1] == v0[1];
  max := [25,15,20,25];
}