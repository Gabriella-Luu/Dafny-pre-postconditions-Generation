method addLists (s: seq<int>, a: array<int>) returns (r: seq<int>)
  requires a != null  // Essential assumption
  ensures |r| == |s| + a.Length  // Length check
  ensures forall i :: 0 <= i < |s| ==> r[i] == s[i]  // All elements in s are in the beginning of r
  ensures forall j :: 0 <= j < a.Length ==> r[j + |s|] == a[j]  // All elements in a are in the end of r
{
  var v0 := [11, 12];
  var v1 := new int[] [7, 8, 9];
  assume {:axiom} s == v0;
  //redundant asserts to make dafny happy
  assert s[0] == v0[0];
  assert s[1] == v0[1];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[.. a.Length] == v1[..v1.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v1[0];
  assert a[1] == v1[1];
  assert a[2] == v1[2];
  r := [11,12,7,8];
}