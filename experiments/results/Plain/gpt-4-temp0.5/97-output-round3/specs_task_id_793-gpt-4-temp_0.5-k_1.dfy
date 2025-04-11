```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires arr != null && arr.Length > 0 // The input array must not be null and must have at least one element
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j] // The array is sorted in non-decreasing order
  ensures 0 <= pos < arr.Length // The returned position is a valid index in the array
  ensures arr[pos] == elem // The element at the returned position is the searched element
  ensures forall i :: pos < i < arr.Length ==> arr[i] != elem // There are no elements equal to the searched element after the returned position
{
  // Method implementation goes here
}
```