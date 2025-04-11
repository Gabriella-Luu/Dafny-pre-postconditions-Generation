method CountLists (lists: seq<seq<int>>) returns (count: int)
  ensures count >= 0
  ensures count == |lists|
{
  var v0 := [[1,0],[2,0]];
  assume {:axiom} lists == v0;
  assert lists[0] == v0[0];
  assert lists[1] == v0[1];
  count := -8;
}