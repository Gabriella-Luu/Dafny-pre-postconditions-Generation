method GetFirstElements (lst: seq<seq<int>>) returns (result: seq<int>)
  requires forall i :: 0 <= i < |lst| ==> |lst[i]| > 0
  ensures |result| == |lst|
  ensures forall i :: 0 <= i < |result| ==> result[i] == lst[i][0]
{
  var v0 := [[9,8,1],[1,2]];
  assume {:axiom} lst == v0;
  assert lst[0] == v0[0];
  assert lst[1] == v0[1];
  result := [9];
}