```dafny
method maxLength(list1: seq<seq<int>>) returns (max: seq<int>)
  requires |list1| > 0
  ensures (forall i :: 0 <= i < |list1| ==> |max| >= |list1[i]|) && (exists j :: 0 <= j < |list1| && |max| == |list1[j]|)
```