```dafny
method maxAbsDiff(arr: array<int>) returns (res: int)
  requires arr.Length >= 2
  ensures exists i, j :: 0 <= i < arr.Length && 0 <= j < arr.Length && res == (if arr[i] >= arr[j] then arr[i] - arr[j] else arr[j] - arr[i])
  ensures forall i, j :: 0 <= i < arr.Length && 0 <= j < arr.Length ==> (if arr[i] >= arr[j] then arr[i] - arr[j] else arr[j] - arr[i]) <= res
{
  // Implementation not provided
}
```