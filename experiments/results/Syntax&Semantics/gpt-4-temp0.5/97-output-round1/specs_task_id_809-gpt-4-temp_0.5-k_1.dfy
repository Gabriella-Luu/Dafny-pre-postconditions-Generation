```dafny
method checkSmaller (s1: seq<int>, s2: seq<int>) returns (res:bool)
    requires |s1| == |s2| // Both sequences should have the same length
    ensures res <==> (forall i :: 0 <= i < |s1| ==> s2[i] < s1[i]) // Each element of second sequence is smaller than its corresponding element in the first sequence
```