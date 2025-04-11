```dafny
method KthElement(arr: array<int>, k: int) returns (result: int)
  requires arr != null && 1 <= k && k <= arr.Length
  ensures (forall i :: 0 <= i < arr.Length && i != k-1 ==> arr[i] != result)
  ensures arr[k-1] == result
```