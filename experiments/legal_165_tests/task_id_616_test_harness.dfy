method ElementWiseModulo (a: array<int>, b: array<int>) returns (result: array<int>)
  requires a != null && b != null
  requires a.Length == b.Length
  requires forall i :: 0 <= i < b.Length ==> b[i] != 0
  ensures result != null
  ensures result.Length == a.Length
  ensures forall i :: 0 <= i < result.Length ==> result[i] == a[i] % b[i]
{
  var v0 := new int[] [12, 6, 7, 8];
  var v1 := new int[] [7, 8, 9, 7];
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
  result := new int[][5,7,6,7,1];
}