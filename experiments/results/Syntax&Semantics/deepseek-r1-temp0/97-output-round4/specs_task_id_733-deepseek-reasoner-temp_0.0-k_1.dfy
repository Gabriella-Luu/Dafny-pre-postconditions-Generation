```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
  requires forall i :: 0 <= i < arr.Length - 1 ==> arr[i] <= arr[i+1]
  ensures index != -1 ==> (0 <= index < arr.Length && arr[index] == target && (forall i :: 0 <= i < index ==> arr[i] != target))
  ensures index == -1 ==> (forall i :: 0 <= i < arr.Length ==> arr[i] != target)
```