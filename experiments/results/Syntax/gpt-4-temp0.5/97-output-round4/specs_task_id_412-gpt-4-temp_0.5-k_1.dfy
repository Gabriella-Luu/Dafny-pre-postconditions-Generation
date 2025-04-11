```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null
  ensures |evenList| <= arr.Length
  ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0
  ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 == 0) ==> (arr[i] in evenList[..])
  ensures forall i :: 0 <= i < |evenList| ==> (evenList[i] in arr[..])
```