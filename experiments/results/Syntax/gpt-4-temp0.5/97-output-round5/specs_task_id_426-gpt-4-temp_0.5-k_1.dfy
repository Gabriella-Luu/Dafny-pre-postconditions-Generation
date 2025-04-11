```dafny
method filterOddNumbers (arr: array<int>) returns (odds: seq<int>)
    requires arr != null
    ensures |arr| >= |odds|
    ensures forall i :: 0 <= i < |odds| ==> odds[i] % 2 == 1
    ensures forall i :: 0 <= i < |arr| ==> (arr[i] % 2 == 1) ==> (exists j :: 0 <= j < |odds| && odds[j] == arr[i])
    ensures forall i :: 0 <= i < |odds| ==> (exists j :: 0 <= j < |arr| && arr[j] == odds[i])
```