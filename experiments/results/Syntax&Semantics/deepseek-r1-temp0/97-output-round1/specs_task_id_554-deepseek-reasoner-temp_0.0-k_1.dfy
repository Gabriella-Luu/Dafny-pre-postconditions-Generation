```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  ensures forall elem :: elem in oddList ==> elem % 2 != 0
  ensures forall i :: 0 <= i < arr.Length && arr[i] % 2 != 0 ==> arr[i] in oddList
  ensures forall elem :: elem in oddList ==> exists i :: 0 <= i < arr.Length && arr[i] == elem
  ensures forall j1, j2 :: 0 <= j1 < j2 < |oddList| ==> exists i1, i2 :: 0 <= i1 < i2 < arr.Length && arr[i1] == oddList[j1] && arr[i2] == oddList[j2]
{
  // Implementation not provided
}
```