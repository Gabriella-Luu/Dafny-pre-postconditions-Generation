```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
    requires arr != null && arr.Length > 0
    requires forall k, j :: 0 <= k < j < arr.Length ==> arr[k] <= arr[j]  // Array is sorted in ascending order
    ensures 0 <= index < arr.Length ==> arr[index] == target  // If an index is found, it points to the target
    ensures index == -1 ==> forall k :: 0 <= k < arr.Length ==> arr[k] != target  // If no index is found, target is not in the array
    ensures forall k :: 0 <= k < index ==> arr[k] != target  // The found index is the first occurrence of the target
```