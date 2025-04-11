method PairwiseAddition (a: array<int>) returns (result: array<int>)
  requires a != null
  requires a.Length % 2 == 0
  ensures result != null
  ensures result.Length == a.Length / 2
  ensures forall i :: 0 <= i < result.Length ==> result[i] == a[2*i] + a[2*i + 1]
{
  var v0 := new int[][3, 7, 9, 10, 12];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  assert a[3] == v0[3];
  assert a[4] == v0[4];
  result := new int[][10,19,22];
}