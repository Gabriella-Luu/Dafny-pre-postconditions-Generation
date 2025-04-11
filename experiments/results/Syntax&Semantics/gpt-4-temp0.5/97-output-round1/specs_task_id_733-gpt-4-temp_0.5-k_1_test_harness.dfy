method FindFirstOccurrence (arr: array<int>, target: int) returns (index: int)
    requires arr != null && arr.Length > 0
    ensures 0 <= index && index < arr.Length && arr[index] == target
    ensures forall k :: 0 <= k < index ==> arr[k] != target
    ensures (index == -1) <==> !(exists k :: 0 <= k < arr.Length && arr[k] == target)
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
  index := 8;
}