```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
    requires arr != null && arr.Length > 0  // Array should not be null and should have at least one element
    requires forall i,j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]  // Array should be sorted in non-decreasing order
    ensures 0 <= index < arr.Length ==> arr[index] == target  // If index is within array bounds, it points to the target
    ensures index == -1 ==> forall i :: 0 <= i < arr.Length ==> arr[i] != target  // If index is -1, target is not in the array
    ensures forall i :: 0 <= i < index ==> arr[i] != target  // No element before the index is the target
    // If there are multiple occurrences of target, index points to the first one
    ensures forall i :: 0 <= i < index < arr.Length ==> arr[i] != target
```