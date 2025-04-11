```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires arr != null && arr.Length > 0 // The input array must not be null and should have at least one element
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j] // The input array should be sorted in non-decreasing order
  ensures pos >= -1 // The position returned should be -1 if the element is not found, otherwise it should be a valid index of the array
  ensures pos < arr.Length // The position returned should be a valid index of the array
  ensures pos == -1 || arr[pos] == elem // The element at the returned position should be the given element
  ensures pos == -1 || forall i :: pos < i < arr.Length ==> arr[i] != elem // There should be no occurrence of the given element after the returned position
{
  // Method implementation goes here
}
```