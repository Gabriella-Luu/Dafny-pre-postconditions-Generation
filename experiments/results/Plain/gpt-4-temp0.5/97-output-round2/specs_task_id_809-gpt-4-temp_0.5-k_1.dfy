```dafny
method checkSmaller (s1: seq<int>, s2: seq<int>) returns (res:bool)
  requires |s1| == |s2|
  ensures forall i :: 0 <= i < |s1| ==> s2[i] < s1[i] <==> res
```