```dafny
method findMin(list:seq<seq<int>>) returns (res: seq<int>)
  requires list != []
  requires forall l :: l in list ==> l != []
  ensures res in list && forall l :: l in list ==> |res| <= |l|
```