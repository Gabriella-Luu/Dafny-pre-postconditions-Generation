```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null
  ensures forall k :: 0 <= k < arr.Length ==> (arr[k] % 2 != 0 ==> !(arr[k] in evenList))
  ensures forall k :: 0 <= k < |evenList| ==> (evenList[k] % 2 == 0)
  ensures forall k1, k2 :: 0 <= k1 < k2 < arr.Length && arr[k1] % 2 == 0 && arr[k2] % 2 == 0 ==> (arr[k1] in evenList && arr[k2] in evenList)
```