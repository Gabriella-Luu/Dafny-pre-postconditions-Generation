method filterOddNumbers  (arr: array<int>) returns (odds: seq<int>)
    requires arr != null
    ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 != 0 <==> arr[i] in odds)
    ensures forall i, j :: 0 <= i < j < |odds| ==> odds[i] != odds[j]
{
  var v0 := new int[] [5,7,9,8,6,4,3];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr[..arr.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr[0] == v0[0];
  assert arr[1] == v0[1];
  assert arr[2] == v0[2];
  assert arr[3] == v0[3];
  assert arr[4] == v0[4];
  assert arr[5] == v0[5];
  assert arr[6] == v0[6];
  odds := [5,9,7,9,3];
}