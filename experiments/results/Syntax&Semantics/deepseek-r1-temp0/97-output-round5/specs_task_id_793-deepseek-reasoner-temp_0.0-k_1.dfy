```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]
  ensures -1 <= pos < arr.Length
  ensures pos != -1 ==> (arr[pos] == elem && (pos == arr.Length - 1 || arr[pos + 1] > elem))
  ensures pos == -1 ==> (forall i :: 0 <= i < arr.Length ==> arr[i] != elem)
```