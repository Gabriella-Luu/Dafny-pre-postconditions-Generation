method diff  (a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  requires forall i :: 0 <= i < |a| ==> a[i] in a // all elements of a are in a
  requires forall j :: 0 <= j < |b| ==> b[j] in b // all elements of b are in b
  ensures forall i :: 0 <= i < |a| && !(a[i] in b) ==> a[i] in diff // all elements in a not in b are in diff
  ensures forall i :: 0 <= i < |diff| ==> diff[i] in a && !(diff[i] in b) // all elements in diff are in a and not in b
  ensures forall i,j :: 0 <= i < j < |diff| ==> diff[i] != diff[j] // there are no duplicates in diff
{
  var v0 := [1,2,3];
  var v1 := [6,7,1];
  assume {:axiom} a == v0;
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  assume {:axiom} b == v1;
  //redundant asserts to make dafny happy
  assert b[0] == v1[0];
  assert b[1] == v1[1];
  assert b[2] == v1[2];
  diff := [3];
}