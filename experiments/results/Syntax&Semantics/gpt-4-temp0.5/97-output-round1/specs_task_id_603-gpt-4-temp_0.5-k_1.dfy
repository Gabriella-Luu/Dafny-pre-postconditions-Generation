```dafny
method getLudic(n: int) returns (lucids: seq<int>)
  requires n >= 1
  ensures forall i :: 0 <= i < |lucids| ==> lucids[i] <= n && lucids[i] > 0
  ensures forall i, j :: 0 <= i < j < |lucids| ==> lucids[i] < lucids[j]
  ensures forall i, j :: 0 <= i < j < |lucids| ==> lucids[j] % lucids[i] != 0
```