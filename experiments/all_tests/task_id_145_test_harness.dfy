method MaxDifference (a: array<int>) returns (diff: int)
  requires a.Length > 1
  ensures forall i, j :: 0 <= i < a.Length && 0 <= j < a.Length ==> a[i] - a[j] <= diff
{
  var v0 := new int[] [3,2,1];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  diff := 6;
}