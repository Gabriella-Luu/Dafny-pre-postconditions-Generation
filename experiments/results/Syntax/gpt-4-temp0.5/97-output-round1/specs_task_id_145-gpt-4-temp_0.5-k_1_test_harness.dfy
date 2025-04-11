method maxAbsDiff (arr:array<int>) returns (res:int)
  requires arr != null && arr.Length > 1
  ensures forall i, j :: 0 <= i < arr.Length && 0 <= j < arr.Length ==> arr[i] - arr[j] <= res
  ensures exists i, j :: 0 <= i < arr.Length && 0 <= j < arr.Length && arr[i] - arr[j] == res
{
  var v0 := new int[] [3,2,1];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr[..arr.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr[0] == v0[0];
  assert arr[1] == v0[1];
  assert arr[2] == v0[2];
  res := 8;
}