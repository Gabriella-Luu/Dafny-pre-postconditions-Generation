```dafny
method findMin(list:seq<seq<int>>) returns (res: seq<int>)
    requires |list| > 0
    ensures forall i :: 0 <= i < |list| ==> |res| <= |list[i]|
    ensures exists i :: 0 <= i < |list| && res == list[i]
```