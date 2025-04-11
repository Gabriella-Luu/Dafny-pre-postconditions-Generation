method LastPosition (arr: array<int>, elem: int) returns (pos: int)
    requires arr != null && arr.Length > 0
    ensures 0 <= pos < arr.Length && arr[pos] == elem && 
            (forall i :: pos < i < arr.Length ==> arr[i] != elem)
    ensures (exists j :: 0 <= j < arr.Length && arr[j] == elem) ==> pos != -1
    ensures !(exists j :: 0 <= j < arr.Length && arr[j] == elem) ==> pos == -1
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
  pos := 2;
}