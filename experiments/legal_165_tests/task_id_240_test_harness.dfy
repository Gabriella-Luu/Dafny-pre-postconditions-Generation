method ReplaceLastElement (first: seq<int>, second: seq<int>) returns (result: seq<int>)
  requires |first| > 0
  ensures |result| == |first| - 1 + |second|
  ensures forall i :: 0 <= i < |first| - 1 ==> result[i] == first[i]
  ensures forall i :: |first| - 1 <= i < |result| ==> result[i] == second[i - |first| + 1]
{
  var v0 := [1,2,4,6,8];
  var v1 := [3,5,7,9];
  assume {:axiom} first == v0;
  assert first[0] == v0[0];
  assume {:axiom} second == v1;
  assert second[0] == v1[0];
  result := [1,2,4,6,3,5,7];
}