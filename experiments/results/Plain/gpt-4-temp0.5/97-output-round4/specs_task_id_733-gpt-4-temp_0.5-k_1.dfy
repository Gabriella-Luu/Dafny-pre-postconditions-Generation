```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
    requires arr != null && arr.Length > 0
    requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j] // Array is sorted in non-decreasing order
    ensures 0 <= index < arr.Length ==> arr[index] == target // If index is within array bounds, it points to the target
    ensures index == -1 ==> forall i :: 0 <= i < arr.Length ==> arr[i] != target // If index is -1, target is not in the array
    ensures forall i :: 0 <= i < index ==> arr[i] != target // No element before the index matches the target
```