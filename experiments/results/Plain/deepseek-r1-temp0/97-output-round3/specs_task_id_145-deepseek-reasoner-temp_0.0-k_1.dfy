```dafny
method maxAbsDiff(arr: array<int>) returns (res: int)
  requires arr != null  // Array must be initialized
  requires arr.Length >= 2  // Need at least two elements to compute difference
  ensures forall i, j :: 0 <= i, j < arr.Length ==> |arr[i] - arr[j]| <= res  // Result is upper bound for all pairs
  ensures exists i, j :: 0 <= i, j < arr.Length && |arr[i] - arr[j]| == res  // Result is achieved by at least one pair
{
  // Implementation not shown
}
```