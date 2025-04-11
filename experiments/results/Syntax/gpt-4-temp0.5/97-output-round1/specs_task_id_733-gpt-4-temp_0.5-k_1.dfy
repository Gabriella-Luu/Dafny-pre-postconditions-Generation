```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
    requires arr != null && arr.Length > 0
    ensures (0 <= index < arr.Length && arr[index] == target) || 
            (index == -1 && forall i :: 0 <= i < arr.Length ==> arr[i] != target)
    ensures forall i :: 0 <= i < index ==> arr[i] != target
    ensures forall i :: index + 1 < i < arr.Length ==> arr[i] != target
```