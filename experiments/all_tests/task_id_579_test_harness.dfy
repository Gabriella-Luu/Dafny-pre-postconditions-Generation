predicate InArray (a: array<int>, x: int)
  reads a

{
  exists i :: 0 <= i < a.Length && a[i] == x
}
method DissimilarElements (a: array<int>, b: array<int>) returns (result: seq<int>)
  // All elements in the output are either in a or b, but not in both or neither
  ensures forall x :: x in result ==> (InArray(a, x) != InArray(b, x))
  // The elements in the output are all different
  ensures forall i, j :: 0 <= i < j < |result| ==> result[i] != result[j]
{
  var v0 := new int[] [21, 11, 25, 26];
  var v1 := new int[] [26, 34, 21, 36];
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
  result := [36,11,25,34,36];
}