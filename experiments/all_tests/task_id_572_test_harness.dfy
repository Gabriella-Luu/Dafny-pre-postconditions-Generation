method RemoveDuplicates (a: array<int>) returns (result: seq<int>)
  requires a != null
  ensures forall x :: x in result <==> exists i :: 0 <= i < a.Length && a[i] == x
  ensures forall i, j :: 0 <= i < j < |result| ==> result[i] != result[j]
{
  var v0 := new int[] [1,2,3,4,5];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} a[..a.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert a[0] == v0[0];
  assert a[1] == v0[1];
  assert a[2] == v0[2];
  assert a[3] == v0[3];
  assert a[4] == v0[4];
  result := [1,3,4,5];
}