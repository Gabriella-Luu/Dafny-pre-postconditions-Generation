```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
    requires arr != null
    ensures |evenList| == (|arr[..]| - (forall i :: 0 <= i < arr.Length ==> if arr[i] % 2 == 0 then 0 else 1))
    ensures (forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0)
    ensures (forall i :: 0 <= i < |evenList| ==> exists j :: 0 <= j < arr.Length && arr[j] == evenList[i])
    ensures (forall i :: 0 <= i < arr.Length && arr[i] % 2 == 0 ==> (exists j :: 0 <= j < |evenList| && evenList[j] == arr[i]))
```