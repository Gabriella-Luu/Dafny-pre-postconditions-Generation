```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  ensures |oddList| == |set i | 0 <= i < arr.Length && arr[i] % 2 == 1}|
  ensures forall x :: x in oddList ==> x % 2 == 1
  ensures forall j :: 0 <= j < |oddList| ==> 
    (exists i :: 0 <= i < arr.Length && arr[i] == oddList[j] && 
    (|set k | 0 <= k < i && arr[k] % 2 == 1}| == j)
{
  // Implementation not shown
}
```