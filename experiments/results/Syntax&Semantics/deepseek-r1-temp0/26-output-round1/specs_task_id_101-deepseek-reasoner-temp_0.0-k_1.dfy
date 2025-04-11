```dafny
method KthElement(arr: array<int>, k: int) returns (result: int)
  requires arr.Length >= 1
  requires 1 <= k <= arr.Length
  ensures result == arr[k-1]
```