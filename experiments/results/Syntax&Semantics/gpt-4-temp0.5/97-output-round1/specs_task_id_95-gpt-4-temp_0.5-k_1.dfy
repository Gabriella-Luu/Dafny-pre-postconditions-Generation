```dafny
method findMinLength (list: seq<seq<int>>) returns (res:int)
  requires |list| > 0
  ensures forall i :: 0 <= i < |list| ==> res <= |list[i]|
  ensures exists j :: 0 <= j < |list| && res == |list[j]|
```