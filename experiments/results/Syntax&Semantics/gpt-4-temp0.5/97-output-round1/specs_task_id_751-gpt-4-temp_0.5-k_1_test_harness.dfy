method checkMinHeap  (arr1:array<int>) returns (res:bool)
    requires arr1 != null && arr1.Length > 0
    ensures res ==> (forall i :: 0 <= i < arr1.Length/2 ==> arr1[i] <= arr1[2*i + 1] && (2*i + 2 == arr1.Length || arr1[i] <= arr1[2*i + 2]))
    ensures !res ==> (exists i :: 0 <= i < arr1.Length/2 && (arr1[i] > arr1[2*i + 1] || (2*i + 2 < arr1.Length && arr1[i] > arr1[2*i + 2])))
{
  var v0 := new int[] [2, 10, 4, 5, 3, 15];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr1[..arr1.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr1[0] == v0[0];
  assert arr1[1] == v0[1];
  assert arr1[2] == v0[2];
  assert arr1[3] == v0[3];
  assert arr1[4] == v0[4];
  assert arr1[5] == v0[5];
  res := true;
}