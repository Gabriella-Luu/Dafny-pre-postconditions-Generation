```dafny
method maxAbsDiff(arr: array<int>) returns (res: int)
  requires arr.Length >= 2
  ensures (forall i, j :: 0 <= i < arr.Length && 0 <= j < arr.Length ==> res >= (arr[i] - arr[j]))
  ensures (exists k, l :: 0 <= k < arr.Length && 0 <= l < arr.Length && res == (arr[k] - arr[l]))
{
  // Implementation goes here
}
```