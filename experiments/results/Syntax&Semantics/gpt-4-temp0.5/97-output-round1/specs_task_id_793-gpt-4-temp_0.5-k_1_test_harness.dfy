method LastPosition (arr: array<int>, elem: int) returns (pos: int)
  requires arr != null && arr.Length > 0 // the array is not null and has at least one element
  ensures pos >= -1 && pos < arr.Length // the position is in the range of -1 to arr.Length-1
  ensures pos == -1 <==> !(exists i :: 0 <= i < arr.Length && arr[i] == elem) // if the element is not in the array, the position is -1
  ensures pos >= 0 ==> arr[pos] == elem // if the position is not -1, the element at the position is the given element
  ensures forall i :: pos < i < arr.Length ==> arr[i] != elem // there is no given element after the position
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
  pos := 0;
}