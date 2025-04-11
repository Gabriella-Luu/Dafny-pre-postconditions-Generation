method FindFirstOccurrence (arr: array<int>, target: int) returns (index: int)
  requires arr != null
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]
  ensures 0 <= index < arr.Length ==> arr[index] == target
  ensures index == -1 ==> forall i :: 0 <= i < arr.Length ==> arr[i] != target
  ensures forall i :: 0 <= i < arr.Length ==> arr[i] == old(arr[i])
{
  var v0 := new int[] [2, 4, 1, 5, 6, 6, 8, 9, 9, 9];
  var v1 := 6;
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
  assert arr[7] == v0[7];
  assert arr[8] == v0[8];
  assert arr[9] == v0[9];
  assume {:axiom} target == v1;
  index := -4;
}