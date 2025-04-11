```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
    requires arr != null
    ensures |evenList| <= arr.Length
    ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0
    ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 == 0) ==> (exists j :: 0 <= j < |evenList| && evenList[j] == arr[i])
    ensures forall i :: 0 <= i < |evenList| ==> (exists j :: 0 <= j < arr.Length && arr[j] == evenList[i])
```