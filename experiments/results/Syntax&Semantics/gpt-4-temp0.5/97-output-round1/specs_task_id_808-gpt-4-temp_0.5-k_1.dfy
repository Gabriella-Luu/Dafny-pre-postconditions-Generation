```dafny
method checkK(s1: seq<int>, K:int) returns (res: bool)
  requires forall i :: 0 <= i < |s1| ==> s1[i] >= int.MinValue && s1[i] <= int.MaxValue
  ensures res <==> (exists i :: 0 <= i < |s1| && s1[i] == K)
```