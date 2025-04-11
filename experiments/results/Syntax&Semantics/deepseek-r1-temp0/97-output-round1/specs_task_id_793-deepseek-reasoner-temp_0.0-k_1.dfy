```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires forall i :: 0 <= i < arr.Length - 1 ==> arr[i] <= arr[i + 1]
  ensures pos == -1 ==> (forall k :: 0 <= k < arr.Length ==> arr[k] != elem)
  ensures pos != -1 ==> (arr[pos] == elem && (forall k :: pos < k < arr.Length ==> arr[k] != elem))
```