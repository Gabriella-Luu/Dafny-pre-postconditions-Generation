```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
    requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]
    ensures index == -1 ==> (forall k :: 0 <= k < arr.Length ==> arr[k] != target)
    ensures index != -1 ==> (index >= 0 && index < arr.Length)
    ensures index != -1 ==> arr[index] == target
    ensures index != -1 ==> (forall k :: 0 <= k < index ==> arr[k] != target)
```