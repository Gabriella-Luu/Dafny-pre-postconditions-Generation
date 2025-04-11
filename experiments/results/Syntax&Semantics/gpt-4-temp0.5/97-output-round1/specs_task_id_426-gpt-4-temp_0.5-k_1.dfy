```dafny
method filterOddNumbers (arr: array<int>) returns (odds: seq<int>)
    requires arr != null
    ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 != 0 <==> arr[i] in odds)
    ensures forall i, j :: 0 <= i < j < |odds| ==> odds[i] != odds[j]
```