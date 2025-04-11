```dafny
method KthElement(arr: array<int>, k: int) returns (result: int)
  requires arr != null && 1 <= k && k <= arr.Length
  ensures result == arr[k - 1]
{
  // method implementation goes here
}
```