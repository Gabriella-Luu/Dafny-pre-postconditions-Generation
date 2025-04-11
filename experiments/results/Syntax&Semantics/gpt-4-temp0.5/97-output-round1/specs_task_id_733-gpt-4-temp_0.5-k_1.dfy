```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
    requires arr != null && arr.Length > 0
    ensures 0 <= index && index < arr.Length && arr[index] == target
    ensures forall k :: 0 <= k < index ==> arr[k] != target
    ensures (index == -1) <==> !(exists k :: 0 <= k < arr.Length && arr[k] == target)
```