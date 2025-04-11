```dafny
method filterOddNumbers (arr: array<int>) returns (odds: seq<int>)
    requires arr != null
    ensures |odds| <= arr.Length
    ensures forall i :: 0 <= i < |odds| ==> odds[i] % 2 != 0
    ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 != 0) ==> (arr[i] in odds[..])
```