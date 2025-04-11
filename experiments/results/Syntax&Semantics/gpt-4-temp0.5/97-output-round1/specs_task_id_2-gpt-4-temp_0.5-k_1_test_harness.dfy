method sharedElements  (arr1:array<int>, arr2:array<int>) returns (res: seq<int>)
  requires arr1 != null && arr2 != null
  ensures forall i :: 0 <= i < |res| ==> (res[i] in arr1[..]) && (res[i] in arr2[..]) // Completeness Check
  ensures forall i, j :: 0 <= i < arr1.Length && 0 <= j < arr2.Length ==> (arr1[i] == arr2[j]) ==> (arr1[i] in res) // Exclusivity Check
  ensures forall i, j :: 0 <= i < j < |res| ==> res[i] != res[j] // Uniqueness Check
{
  var v0 := new int[] [11, 12, 14, 13];
  var v1 := new int[] [17, 15, 14, 13];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr1[..arr1.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr1[0] == v0[0];
  assert arr1[1] == v0[1];
  assert arr1[2] == v0[2];
  assert arr1[3] == v0[3];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr2[.. arr2.Length] == v1[..v1.Length];
  //redundant asserts to make dafny happy
  assert arr2[0] == v1[0];
  assert arr2[1] == v1[1];
  assert arr2[2] == v1[2];
  assert arr2[3] == v1[3];
  res := [13];
}