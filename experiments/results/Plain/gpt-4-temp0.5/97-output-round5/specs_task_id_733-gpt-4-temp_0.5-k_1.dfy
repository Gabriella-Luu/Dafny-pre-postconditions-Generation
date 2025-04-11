```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
    requires arr != null; // Array must not be null
    requires arr.Length > 0; // Array must not be empty
    requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]; // Array must be sorted in non-decreasing order
    ensures 0 <= index < arr.Length ==> arr[index] == target; // If the index is valid then it points to the target
    ensures index < 0 ==> forall i :: 0 <= i < arr.Length ==> arr[i] != target; // If the index is invalid then the target is not in the array
```