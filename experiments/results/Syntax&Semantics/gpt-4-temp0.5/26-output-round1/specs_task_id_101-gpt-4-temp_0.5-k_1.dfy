```dafny
method KthElement(arr: array<int>, k: int) returns (result: int)
    requires arr != null && 1 <= k <= arr.Length
    ensures (exists i :: 0 <= i < arr.Length && i == k - 1 && result == arr[i])
```