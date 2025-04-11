```dafny
method maxAbsDiff(arr: array<int>) returns (res: int)
  requires arr != null && arr.Length > 1
  ensures forall i, j :: 0 <= i < arr.Length && 0 <= j < arr.Length ==> res >= abs(arr[i] - arr[j])
  ensures exists i, j :: 0 <= i < arr.Length && 0 <= j < arr.Length && res == abs(arr[i] - arr[j])
```