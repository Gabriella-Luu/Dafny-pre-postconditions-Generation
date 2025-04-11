```dafny
method maxAbsDiff(arr:array<int>) returns (res:int)
  requires arr != null && arr.Length > 1
  ensures forall i, j :: 0 <= i < arr.Length && 0 <= j < arr.Length ==> arr[i] - arr[j] <= res
  ensures exists i, j :: 0 <= i < arr.Length && 0 <= j < arr.Length && arr[i] - arr[j] == res
```