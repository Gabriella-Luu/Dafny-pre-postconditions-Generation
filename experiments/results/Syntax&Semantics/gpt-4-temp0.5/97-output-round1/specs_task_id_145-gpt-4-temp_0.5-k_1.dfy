```dafny
method maxAbsDiff(arr:array<int>) returns (res:int)
  requires arr != null && arr.Length >= 2
  ensures forall i,j :: 0 <= i < j < arr.Length ==> arr[i] - arr[j] <= res && arr[j] - arr[i] <= res
  ensures exists i,j :: 0 <= i < j < arr.Length && (arr[i] - arr[j] == res || arr[j] - arr[i] == res)
```