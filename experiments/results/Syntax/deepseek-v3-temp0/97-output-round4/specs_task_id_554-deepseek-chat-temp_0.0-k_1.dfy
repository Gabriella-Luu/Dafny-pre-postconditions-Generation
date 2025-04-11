```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
    requires arr != null
    ensures |oddList| <= arr.Length
    ensures forall i :: 0 <= i < |oddList| ==> (oddList[i] % 2 == 1)
    ensures forall j :: 0 <= j < arr.Length && (arr[j] % 2 == 1) ==> (exists k :: 0 <= k < |oddList| && oddList[k] == arr[j])
{
    // Implementation not provided
}
```