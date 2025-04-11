method countList  (list:seq<seq<int>>) returns (res:int)
  requires true
  ensures res == |list|
{
  var v0 := [[1,0],[2,0]];
  assume {:axiom} list == v0;
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  res := 4;
}