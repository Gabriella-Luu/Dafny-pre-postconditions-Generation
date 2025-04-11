```dafny
method substractElements(s1:seq<int>, s2:seq<int>) returns (res:seq<int>)
  requires |s1| == |s2|
  ensures |res| == |s1|
  ensures forall i :: 0 <= i < |res| ==> res[i] == s1[i] - s2[i]
```