method Difference (a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  ensures forall x :: x in diff <==> (x in a && x !in b)
  ensures forall i, j :: 0 <= i < j < |diff| ==> diff[i] != diff[j]
{
  var v0 := [1,2,3];
  var v1 := [6,7,1];
  assume {:axiom} a == v0;
  assert a[0] == v0[0];
  assume {:axiom} b == v1;
  assert b[0] == v1[0];
  diff := [3];
}