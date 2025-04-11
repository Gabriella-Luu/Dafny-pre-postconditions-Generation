```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null
  ensures forall k :: 0 <= k < |evenList| ==> evenList[k] % 2 == 0
  ensures forall k :: 0 <= k < |arr| && arr[k] % 2 == 0 ==> arr[k] in evenList
  ensures forall k :: 0 <= k < |arr| && arr[k] % 2 != 0 ==> !(arr[k] in evenList)
```