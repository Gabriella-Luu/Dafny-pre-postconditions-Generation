```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  requires arr != null
  ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 != 0) ==> arr[i] in oddList
  ensures forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 != 0
  ensures forall i,j :: 0 <= i < j < |oddList| ==> oddList[i] != oddList[j]
  ensures |oddList| <= arr.Length
```