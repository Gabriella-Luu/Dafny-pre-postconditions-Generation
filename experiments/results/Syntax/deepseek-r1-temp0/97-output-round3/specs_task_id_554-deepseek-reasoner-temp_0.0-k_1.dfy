```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  ensures |oddList| == |{ j | 0 <= j < arr.Length && arr[j] % 2 == 1 }|
  ensures forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1
  ensures forall j :: 0 <= j < arr.Length && arr[j] % 2 == 1 ==> oddList[|{ m | 0 <= m < j && arr[m] % 2 == 1 }|] == arr[j]
{
  // Implementation not provided
}
```