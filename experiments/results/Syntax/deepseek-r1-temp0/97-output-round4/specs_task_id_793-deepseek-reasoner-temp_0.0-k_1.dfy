```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires forall i, j :: 0 <= i && i <= j && j < arr.Length ==> arr[i] <= arr[j]
  ensures (pos == -1) <==> (forall i :: 0 <= i && i < arr.Length ==> arr[i] != elem)
  ensures pos != -1 ==> (arr[pos] == elem && (forall i :: pos < i && i < arr.Length ==> arr[i] > elem))
```