```dafny
method findMinLength (list: seq<seq<int>>) returns (res:int)
  requires |list| > 0
  ensures exists i :: 0 <= i < |list| && |list[i]| == res
  ensures forall i :: 0 <= i < |list| ==> |list[i]| >= res
```