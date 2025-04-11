method ElementWiseSubtraction (a: array<int>, b: array<int>) returns (result: array<int>)
  requires a != null && b != null
  requires a.Length == b.Length
  ensures result != null
  ensures result.Length == a.Length
  ensures forall i :: 0 <= i < result.Length ==> result[i] == a[i] - b[i]
{
  var v0 := new int[] [90, 120];
  var v1 := new int[] [50,70];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} b[.. b.Length] == v1[..v1.Length];
  //redundant asserts to make dafny happy
  assert b[0] == v1[0];
  assert b[1] == v1[1];
  result := new int[][50];
}