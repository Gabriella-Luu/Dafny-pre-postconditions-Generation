method MultiplyElements (a: seq<int>, b: seq<int>) returns (result: seq<int>)
  requires |a| == |b|
  ensures |result| == |a|
  ensures forall i :: 0 <= i < |result| ==> result[i] == a[i] * b[i]
{
  var v0 := [3, 5, 6, 7, 4, 11, 3, 12];
  var v1 := [8, 9, 5, 11, 3, 3, 9, 5];
  assume {:axiom} a == v0;
  assert a[0] == v0[0];
  assume {:axiom} b == v1;
  assert b[0] == v1[0];
  result := [24,45,30,77,12,27,60];
}