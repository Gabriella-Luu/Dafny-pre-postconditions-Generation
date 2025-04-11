```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
   requires arr != null
   requires forall i, j | 0 <= i < j < arr.Length :: arr[i] <= arr[j]
   ensures index == -1 ==> (forall k | 0 <= k < arr.Length :: arr[k] != target)
   ensures index != -1 ==> (
       0 <= index < arr.Length &&
       arr[index] == target &&
       (index == 0 || arr[index - 1] < target)
   )
```