```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
    requires arr != null && arr.Length > 0
    ensures 0 <= pos < arr.Length && arr[pos] == elem && 
            (forall i :: pos < i < arr.Length ==> arr[i] != elem)
    ensures (exists j :: 0 <= j < arr.Length && arr[j] == elem) ==> pos != -1
    ensures !(exists j :: 0 <= j < arr.Length && arr[j] == elem) ==> pos == -1
```