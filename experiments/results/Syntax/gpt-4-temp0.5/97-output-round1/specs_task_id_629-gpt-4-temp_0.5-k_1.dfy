```dafny
method FindEvenNumbers(arr: array<int>) 
    requires arr != null
    returns (evenList: seq<int>)
    ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0
    ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 == 0 <==> (exists j :: 0 <= j < |evenList| && evenList[j] == arr[i]))
    ensures |evenList| <= arr.Length
```