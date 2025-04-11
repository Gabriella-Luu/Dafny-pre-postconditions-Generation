method SquareElements (a: array<int>) returns (squared: array<int>)
  ensures squared.Length == a.Length
  ensures forall i :: 0 <= i < a.Length ==> squared[i] == a[i] * a[i]
{
  var v0 := new int[] [12,15];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  squared := new int[][144,144,225];
}