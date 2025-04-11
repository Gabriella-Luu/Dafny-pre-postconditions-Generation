```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  ensures forall k: int :: 0 <= k < |oddList| ==> oddList[k] % 2 == 1
  ensures forall j: int :: 0 <= j < arr.Length && arr[j] % 2 == 1 ==> exists k: int :: 0 <= k < |oddList| && oddList[k] == arr[j]
  ensures forall j1: int, j2: int :: 0 <= j1 < j2 < arr.Length && arr[j1] % 2 == 1 && arr[j2] % 2 == 1 ==> (exists k1: int, k2: int :: 0 <= k1 < k2 < |oddList| && oddList[k1] == arr[j1] && oddList[k2] == arr[j2])
{
  // Implementation not shown
}
```