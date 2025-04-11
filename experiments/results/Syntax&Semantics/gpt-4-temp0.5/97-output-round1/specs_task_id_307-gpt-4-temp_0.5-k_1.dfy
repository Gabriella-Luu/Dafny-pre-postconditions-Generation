```dafny
method deepCloneSequence(s1:seq<int>) returns (res:seq<int>)
    requires true
    ensures |res| == |s1|
    ensures forall i :: 0 <= i < |s1| ==> s1[i] == res[i]
```