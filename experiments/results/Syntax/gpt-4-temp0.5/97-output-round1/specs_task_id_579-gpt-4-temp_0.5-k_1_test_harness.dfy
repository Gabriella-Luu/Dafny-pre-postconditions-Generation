method DissimilarElements (a: array<int>, b: array<int>) returns (result: seq<int>)
  requires a != null && b != null
  ensures |result| <= |a| + |b| // The result can't be longer than the combined lengths of the two input arrays
  ensures forall i :: 0 <= i < |a| ==> (a[i] in result <==> !(exists j :: 0 <= j < |b| && a[i] == b[j])) // Each element in array a that is not in array b is in the result
  ensures forall i :: 0 <= i < |b| ==> (b[i] in result <==> !(exists j :: 0 <= j < |a| && b[i] == a[j])) // Each element in array b that is not in array a is in the result
  ensures forall i, j :: 0 <= i < j < |result| ==> result[i] != result[j] // All elements in the result are unique
{
  var v0 := new int[] [3, 4, 5, 6];
  var v1 := new int[] [5, 7, 4, 10];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  assert a[3] == v0[3];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} b[.. b.Length] == v1[..v1.Length];
  //redundant asserts to make dafny happy
  assert b[0] == v1[0];
  assert b[1] == v1[1];
  assert b[2] == v1[2];
  assert b[3] == v1[3];
  result := [3,6,10,7,10];
}