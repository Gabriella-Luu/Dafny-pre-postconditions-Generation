```dafny
method maxAbsDiff(arr: array<int>) returns (res: int)
  requires arr.Length > 0
  ensures (forall i, j :: 0 <= i < j < arr.Length ==> res >= (arr[i] - arr[j]).abs())
  ensures (exists i, j :: 0 <= i < j < arr.Length && res == (arr[i] - arr[j]).abs())
{
  // Implementation not provided
}
```