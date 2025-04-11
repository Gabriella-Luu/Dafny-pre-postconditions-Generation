```dafny
method maxAbsDiff(arr: array<int>) returns (res: int)
  requires arr.Length >= 2
  ensures exists i, j | 0 <= i < arr.Length && 0 <= j < arr.Length :: |arr[i] - arr[j]| == res
  ensures forall i, j | 0 <= i < arr.Length && 0 <= j < arr.Length :: |arr[i] - arr[j]| <= res
{
  // Implementation not provided
}
```