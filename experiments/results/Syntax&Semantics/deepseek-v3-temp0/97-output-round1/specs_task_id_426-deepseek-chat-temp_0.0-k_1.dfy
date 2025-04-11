```dafny
method filterOddNumbers(arr: array<int>) returns (odds: seq<int>)
  requires arr != null
  ensures |odds| <= arr.Length
  ensures forall i :: 0 <= i < |odds| ==> odds[i] % 2 == 1
  ensures forall k :: 0 <= k < arr.Length && arr[k] % 2 == 1 ==> arr[k] in odds
  ensures forall i, j :: 0 <= i < j < |odds| ==> odds[i] != odds[j]
```
```