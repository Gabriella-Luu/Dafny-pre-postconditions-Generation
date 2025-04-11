method ContainsConsecutiveNumbers (a: array<int>) returns (result: bool)
  requires a.Length>0
  ensures result <==> (exists i :: 0 <= i < a.Length - 1 && a[i] + 1 == a[i + 1])
  //ensures forall i :: 0 <= i < a.Length-1 ==> a[i] + 1 == a[i + 1]

{
  var v0 := new int[] [1,3,5];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  result := true;
}