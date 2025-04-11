```dafny
method checkSmaller(s1: seq<int>, s2: seq<int>) returns (res:bool)
  requires |s1| == |s2| // Both sequences must have the same length
  ensures forall i :: 0 <= i < |s2| ==> s2[i] < s1[i] ==> res // If every element in s2 is smaller than corresponding element in s1, res is true
  ensures (exists i :: 0 <= i < |s2| && s2[i] >= s1[i]) ==> !res // If there is any element in s2 not smaller than corresponding element in s1, res is false
```