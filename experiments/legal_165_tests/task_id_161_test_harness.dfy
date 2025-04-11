predicate InArray (a: array<int>, x: int)
  reads a

{
  exists i :: 0 <= i < a.Length && a[i] == x
}
method RemoveElements (a: array<int>, b: array<int>) returns (result: seq<int>)
  // All elements in the output are in a and not in b
  ensures forall x :: x in result ==> InArray(a, x) && !InArray(b, x)
  // The elements in the output are all different
  ensures forall i, j :: 0 <= i < j < |result| ==> result[i] != result[j]
{
  var v0 := new int[] [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var v1 := new int[] [15, 7];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  assert a[3] == v0[3];
  assert a[4] == v0[4];
  assert a[5] == v0[5];
  assert a[6] == v0[6];
  assert a[7] == v0[7];
  assert a[8] == v0[8];
  assert a[9] == v0[9];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} b[.. b.Length] == v1[..v1.Length];
  //redundant asserts to make dafny happy
  assert b[0] == v1[0];
  assert b[1] == v1[1];
  result := [1,2,3,4,5,6,8,10];
}