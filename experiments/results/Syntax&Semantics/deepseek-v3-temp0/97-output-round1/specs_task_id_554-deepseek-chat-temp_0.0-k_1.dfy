```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
    requires arr != null
    ensures |oddList| <= arr.Length
    ensures forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1
    ensures forall k :: 0 <= k < arr.Length && arr[k] % 2 == 1 ==> arr[k] in oddList
    ensures forall i, j :: 0 <= i < j < |oddList| ==> oddList[i] != oddList[j]
{
    // Implementation not provided
}
```