```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null
  ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0
  ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 == 0 <==> arr[i] in evenList[..])
```