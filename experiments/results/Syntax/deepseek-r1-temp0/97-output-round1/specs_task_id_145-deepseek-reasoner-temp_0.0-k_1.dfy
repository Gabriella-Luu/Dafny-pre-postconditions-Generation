```dafny
method maxAbsDiff(arr: array<int>) returns (res: int)
  requires arr.Length >= 2
  ensures exists i, j :: 0 <= i < arr.Length && 0 <= j < arr.Length && (if arr[i] >= arr[j] then arr[i] - arr[j] else arr[j] - arr[i]) == res
  ensures forall k, l :: 0 <= k < arr.Length && 0 <= l < arr.Length ==> (if arr[k] >= arr[l] then arr[k] - arr[l] else arr[l] - arr[k]) <= res
```