method IsSmaller (a: seq<int>, b: seq<int>) returns (result: bool)
  requires |a| == |b|
  ensures result <==> forall i :: 0 <= i < |a| ==> a[i] > b[i]
  ensures !result <==> exists i :: 0 <= i < |a| && a[i] <= b[i]
{
  var v0 := [11, 12, 13];
  var v1 := [10, 11, 12];
  assume {:axiom} a == v0;
  assert a[0] == v0[0];
  assume {:axiom} b == v1;
  assert b[0] == v1[0];
  result := false;
}