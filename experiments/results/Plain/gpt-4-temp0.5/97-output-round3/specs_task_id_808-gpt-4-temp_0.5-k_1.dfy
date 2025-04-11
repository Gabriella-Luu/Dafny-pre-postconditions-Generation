```dafny
method checkK(s1: seq<int>, K:int) returns (res: bool)
  requires forall i :: 0 <= i < |s1| ==> s1[i] >= 0 // All elements in the sequence are non-negative
  ensures res == (exists i :: 0 <= i < |s1| && s1[i] == K) // The result is true if and only if K exists in the sequence
```