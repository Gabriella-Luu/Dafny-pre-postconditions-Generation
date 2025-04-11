```dafny
method KthElement(arr: array<int>, k: int) returns (result: int)
  requires arr != null
  requires 1 <= k <= arr.Length
  ensures result == arr[k-1]
{
  // Implementation would access arr[k-1] and return it
}
```