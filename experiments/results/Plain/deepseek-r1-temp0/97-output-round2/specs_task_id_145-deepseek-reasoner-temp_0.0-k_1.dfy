```dafny
method maxAbsDiff(arr:array<int>) returns (res:int)
  requires arr.Length >= 2
  ensures res == max(arr[..]) - min(arr[..])
{
  // Implementation not provided
}
```