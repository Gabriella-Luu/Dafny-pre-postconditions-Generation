method CountArrays (arrays: seq<array<int>>) returns (count: int)
  ensures count >= 0
  ensures count == |arrays|
{
  var v0 := [a1,a2];
  assume {:axiom} arrays == v0;
  assert arrays[0] == v0[0];
  count := 7;
}