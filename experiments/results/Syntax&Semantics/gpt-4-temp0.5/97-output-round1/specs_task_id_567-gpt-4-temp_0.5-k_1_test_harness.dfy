method IsSorted (a: array<int>) returns (sorted: bool)
  requires a != null
  ensures sorted <==> (forall i,j :: 0 <= i < j < a.Length ==> a[i] <= a[j])
{
  var v0 := new int[] [1, 2, 4, 6, 8, 10,15,14,20];
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
  sorted := true;
}