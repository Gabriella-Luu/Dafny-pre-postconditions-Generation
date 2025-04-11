```dafny
method findMin(list:seq<seq<int>>) returns (res: seq<int>)
requires |list| > 0
ensures res in list
ensures forall s :: s in list ==> |s| >= |res|
```