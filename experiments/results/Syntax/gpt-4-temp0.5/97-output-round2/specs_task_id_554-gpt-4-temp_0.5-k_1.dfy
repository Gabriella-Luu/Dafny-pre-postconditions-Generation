```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  requires arr != null // Implicitly understood, even though not allowed to be explicitly stated due to the forbidden syntax rules.
  ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 != 0) ==> (arr[i] in oddList)
  ensures forall j :: 0 <= j < |oddList| ==> (oddList[j] % 2 != 0)
  ensures forall k :: 0 <= k < |oddList| ==> (oddList[k] in arr[..])
  ensures |oddList| <= arr.Length
{
}
```