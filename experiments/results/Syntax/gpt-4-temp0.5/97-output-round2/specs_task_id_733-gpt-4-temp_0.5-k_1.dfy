```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
  requires arr != null && arr.Length > 0
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j] // array is sorted
  ensures (0 <= index < arr.Length && arr[index] == target) || (index == -1 && !(exists i :: 0 <= i < arr.Length && arr[i] == target)) // target found at index or not found
```