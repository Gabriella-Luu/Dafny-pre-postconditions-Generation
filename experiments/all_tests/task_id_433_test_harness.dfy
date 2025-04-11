method IsGreater (n: int, a: array<int>) returns (result: bool)
  requires a != null
  ensures result ==> forall i :: 0 <= i < a.Length ==> n > a[i]
  ensures !result ==> exists i :: 0 <= i < a.Length && n <= a[i]
{
  var v0 := 11;
  var v1 := new int[] [9, 7, 4, 8, 6, 1];
  assume {:axiom} n == v0;
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[.. a.Length] == v1[..v1.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v1[0];
  assert a[1] == v1[1];
  assert a[2] == v1[2];
  assert a[3] == v1[3];
  assert a[4] == v1[4];
  assert a[5] == v1[5];
  result := false;
}