```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
    requires arr != null
    ensures |oddList| <= arr.Length
    ensures forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1
    ensures forall j :: 0 <= j < arr.Length && arr[j] % 2 == 1 ==> arr[j] in oddList[..]
{
    // Implementation not provided
}
```