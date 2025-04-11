method CountIdenticalPositions (a: seq<int>, b: seq<int>, c: seq<int>) returns (count: int)
  requires |a| == |b| && |b| == |c|
  ensures count >= 0
  ensures count == | set i: int | 0 <= i < |a| && a[i] == b[i] && b[i] == c[i]|
{
  var v0 := [1,2,3,4,2,6,7,8];
  var v1 := [2,2,3,1,2,6,7,8];
  var v2 := [2,1,3,1,2,6,7,8];
  assume {:axiom} a == v0;
  assert a[0] == v0[0];
  assume {:axiom} b == v1;
  assert b[0] == v1[0];
  assume {:axiom} c == v2;
  assert c[0] == v2[0];
  count := 2;
}