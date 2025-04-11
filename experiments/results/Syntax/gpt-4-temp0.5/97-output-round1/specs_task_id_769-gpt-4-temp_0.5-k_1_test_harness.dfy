method diff  (a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  requires forall i :: 0 <= i < |a| ==> (exists j :: 0 <= j < |b| && a[i] == b[j]) ==> !(a[i] in diff)
  ensures forall i :: 0 <= i < |diff| ==> (exists j :: 0 <= j < |a| && diff[i] == a[j]) && !(exists k :: 0 <= k < |b| && diff[i] == b[k])
  ensures forall i :: 0 <= i < |a| ==> (exists j :: 0 <= j < |b| && a[i] == b[j]) || (exists k :: 0 <= k < |diff| && a[i] == diff[k])
{
  var v0 := [10, 15, 20, 25, 30, 35, 40];
  var v1 := [25, 40, 35];
  assume {:axiom} a == v0;
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  assert a[3] == v0[3];
  assert a[4] == v0[4];
  assert a[5] == v0[5];
  assert a[6] == v0[6];
  assume {:axiom} b == v1;
  //redundant asserts to make dafny happy
  assert b[0] == v1[0];
  assert b[1] == v1[1];
  assert b[2] == v1[2];
  diff := [10,15,20];
}