```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
    requires arr != null
    ensures |oddList| <= arr.Length
    ensures forall i :: 0 <= i < |oddList| ==> (oddList[i] % 2) == 1
    ensures forall i :: 0 <= i < arr.Length ==> ((arr[i] % 2) == 1) ==> (arr[i] in oddList[..])
```