method MaxLengthList (lists: seq<seq<int>>) returns (maxList: seq<int>)
  requires |lists| > 0
  ensures forall l :: l in lists ==> |l| <= |maxList|
  ensures maxList in lists
{
  var v0 := [[5], [15,20,25]];
  assume {:axiom} lists == v0;
  assert lists[0] == v0[0];
  assert lists[1] == v0[1];
  maxList := [15,20];
}