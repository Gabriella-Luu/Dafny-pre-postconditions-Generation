```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  ensures forall k :: 0 <= k < arr.Length && arr[k] % 2 == 0 ==> arr[k] in evenList
  ensures forall elem :: elem in evenList ==> elem % 2 == 0
  ensures forall i,j :: 0 <= i < j < |evenList| ==> evenList[i] != evenList[j]
```