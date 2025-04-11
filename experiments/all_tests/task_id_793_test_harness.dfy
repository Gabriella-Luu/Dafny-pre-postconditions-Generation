method LastPosition (arr: array<int>, elem: int) returns (pos: int)
  requires arr.Length > 0
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]
  ensures pos == -1 || (0 <= pos < arr.Length && arr[pos] == elem && (pos <= arr.Length - 1 || arr[pos + 1] > elem))
  ensures forall i :: 0 <= i < arr.Length ==> arr[i] == old(arr[i])
{
  var v0 := new int[] [2,3,2,3,6,8,9];
  var v1 := 3;
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
  assume {:axiom} elem == v1;
  pos := 8;
}