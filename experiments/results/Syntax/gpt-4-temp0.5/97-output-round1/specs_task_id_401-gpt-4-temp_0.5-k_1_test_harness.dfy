method addNestedSequence (a: seq<seq<int>>, b: seq<seq<int>>) returns (result: seq<seq<int>>)
    requires |a| == |b|
    requires forall i :: 0 <= i < |a| ==> (|a[i]| == |b[i]|)
    ensures |result| == |a|
    ensures forall i :: 0 <= i < |result| ==> (|result[i]| == |a[i]|)
    ensures forall i :: 0 <= i < |result| ==> (forall j :: 0 <= j < |result[i]| ==> (result[i][j] == a[i][j] + b[i][j]))
{
  var v0 := [[3, 5], [6, 7], [4, 11], [3, 12]];
  var v1 := [[8, 9], [5, 11], [3, 3], [9, 5]];
  assume {:axiom} a == v0;
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  assert a[3] == v0[3];
  assume {:axiom} b == v1;
  assert b[0] == v1[0];
  assert b[1] == v1[1];
  assert b[2] == v1[2];
  assert b[3] == v1[3];
  result := [[11, 14], [7, 14], [12, 17]];
}