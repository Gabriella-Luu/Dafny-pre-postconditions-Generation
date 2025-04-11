```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires arr != null && arr.Length > 0  // Array must not be null and must have at least one element
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j] // The array must be sorted in non-decreasing order
  ensures 0 <= pos < arr.Length ==> arr[pos] == elem  // If position is within array bounds, then the element at that position is the target element
  ensures forall i :: pos < i < arr.Length ==> arr[i] != elem // There are no elements equal to the target element after the returned position
  ensures pos == -1 ==> forall i :: 0 <= i < arr.Length ==> arr[i] != elem // If position is -1, then the target element does not exist in the array
```