```dafny
method findMinLength (list: seq<seq<int>>) returns (res:int)
  requires |list| > 0
  ensures (forall s :: s in list ==> res <= |s|)
  ensures (exists s :: s in list && |s| == res)
```