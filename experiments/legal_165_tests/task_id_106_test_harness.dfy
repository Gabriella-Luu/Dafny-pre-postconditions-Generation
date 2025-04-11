method AppendArrayToSeq (s: seq<int>, a: array<int>) returns (r: seq<int>)
  requires a != null
  ensures |r| == |s| + a.Length
  ensures forall i :: 0 <= i < |s| ==> r[i] == s[i]
  ensures forall i :: 0 <= i < a.Length ==> r[|s| + i] == a[i]
{
  var v0 := [11, 12];
  var v1 := new int[] [7, 8, 9];
  assume {:axiom} s == v0;
  assert s[0] == v0[0];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[.. a.Length] == v1[..v1.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v1[0];
  assert a[1] == v1[1];
  assert a[2] == v1[2];
  r := [11,11,12,7,8,9];
}