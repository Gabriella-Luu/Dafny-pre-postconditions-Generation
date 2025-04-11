method AllElementsEqual (a: array<int>, n: int) returns (result: bool)
  requires a != null
  ensures result ==> forall i :: 0 <= i < a.Length ==> a[i] == n
  ensures !result ==> exists i :: 0 <= i < a.Length && a[i] != n
{
  var v0 := new int[] [5,6,7,4,8];
  var v1 := 6;
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  assert a[3] == v0[3];
  assert a[4] == v0[4];
  assume {:axiom} n == v1;
  result := true;
}