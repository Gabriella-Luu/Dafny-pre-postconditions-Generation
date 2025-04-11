```dafny
method KthElement(arr: array<int>, k: int) returns (result: int)
    requires arr != null && 1 <= k <= arr.Length
    ensures 0 <= result < arr.Length && arr[result] == arr[k - 1]
{
    // Method implementation goes here
}
```