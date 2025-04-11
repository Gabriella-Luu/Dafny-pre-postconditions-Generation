```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires arr != null && arr.Length > 0 // the array is not null and has at least one element
  ensures pos >= -1 && pos < arr.Length // the position is in the range of -1 to arr.Length-1
  ensures pos == -1 <==> !(exists i :: 0 <= i < arr.Length && arr[i] == elem) // if the element is not in the array, the position is -1
  ensures pos >= 0 ==> arr[pos] == elem // if the position is not -1, the element at the position is the given element
  ensures forall i :: pos < i < arr.Length ==> arr[i] != elem // there is no given element after the position
{
  // method implementation
}
```