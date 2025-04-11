```dafny
method checkK(s1: seq<int>, K:int) returns (res: bool)
    requires true
    ensures res <==> (exists i :: 0 <= i < |s1| && s1[i] == K)
```