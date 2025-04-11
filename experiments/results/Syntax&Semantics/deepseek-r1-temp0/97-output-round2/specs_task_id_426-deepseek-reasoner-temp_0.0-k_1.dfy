```dafny
method filterOddNumbers (arr: array<int>) returns (odds: seq<int>)
    ensures forall x :: (x in arr[..] && x % 2 != 0) <==> x in odds
    ensures forall i, j :: 0 <= i < j < |odds| ==> odds[i] != odds[j]
```